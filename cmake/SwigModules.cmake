##---------------------------------------------------------------------------##
## SwigModules.cmake
## Seth Johnson
## Wednesday July 18 17:5:36 2012
##---------------------------------------------------------------------------##
## Copyright (C) 2012 Oak Ridge National Laboratory, UT-Battelle, LLC.
## --------------------------------------------------------------------------##

IF (NOT DEFINED SWIG_DIR)
  MESSAGE(FATAL_ERROR "SWIG not loaded.")
ENDIF()

# Load SWIG and other modules we need
INCLUDE(UseSWIG)
INCLUDE(CMakeParseArguments)
INCLUDE(CheckCXXCompilerFlag)

# Tell SWIG to use modern Python code
LIST(APPEND CMAKE_SWIG_PYTHON_FLAGS "-modern" "-noproxydel")

# If python version is high enough, add -py3 flag
IF(PYTHON_VERSION_STRING VERSION_GREATER 3.0)
  LIST(APPEND CMAKE_SWIG_PYTHON_FLAGS "-py3")
ENDIF()

##---------------------------------------------------------------------------##
# Look through a header/SWIG file and find dependencies

MACRO(get_swig_dependencies _RESULT_VAR _SOURCE)
  # Search for dependencies in the SWIG file
  FILE(STRINGS ${_SOURCE} HEADER_FILES
    REGEX "^[ \t]*%include *\""
    )
  LIST(REMOVE_DUPLICATES HEADER_FILES)

  # Set up test directories
  SET(TEST_DIRS
    ${CMAKE_CURRENT_SOURCE_DIR}
    )

  # Get just the file names inside each "include"
  SET(${_RESULT_VAR})
  FOREACH(THEFILE ${HEADER_FILES})
    STRING(REGEX REPLACE "^.*\"([^\"]+)\".*$" "\\1" THEFILE ${THEFILE})
    IF( THEFILE )
      FOREACH(TESTDIR ${TEST_DIRS})
        IF(EXISTS ${TESTDIR}/${THEFILE})
          LIST(APPEND ${_RESULT_VAR} ${TESTDIR}/${THEFILE})
          BREAK()
        ENDIF()
      ENDFOREACH()
    ENDIF()
  ENDFOREACH()
ENDMACRO()

##---------------------------------------------------------------------------##
## ADDING SWIG MODULES
##---------------------------------------------------------------------------##
# MAKE_SWIG(
#   MODULE module
#   [LANGUAGE fortran]
#   [SOURCE src.i]
#   [DEPLIBS lib1 [lib2 ...]]
#   [DEPMODULES module1 [module2 ...]]
#   [EXTRASRC file1 [file2 ...]]
#   )
#
# Create a SWIG-generated python module and shared object.
#
# The MODULE argument is the name of the resulting module file. By default it
# assumes the name "module.i", but that can be overriden with the SOURCE
# argument.
#
# All libraries in DEPLIBS will be linked against each target.
#
# Because TriBITS doesn't handle intra-SWIG module dependencies, we add a
# provision for extra dependency generation using the DEPMODULES list. For
# example, kba_utils will have "DEPMODULES denovo_utils ".
#
# The EXTRASRC argument allows additional sources to be compiled into the SWIG
# module target.

function(MAKE_SWIG)
  cmake_parse_arguments(PARSE "" "MODULE;LANGUAGE;SOURCE"
      "DEPLIBS;DEPMODULES;EXTRASRC" ${ARGN})

  if(NOT PARSE_MODULE)
    message(SEND_ERROR "Cannot call MAKE_SWIG without MODULE")
  endif()
  set(PARSE_MODULE ${PARSE_MODULE})

  if(NOT PARSE_LANGUAGE)
    SET(PARSE_LANGUAGE FORTRAN)
  endif()
  string(TOUPPER "${PARSE_LANGUAGE}" PARSE_LANGUAGE)

  if(PARSE_SOURCE)
    set(SRC_FILE "${PARSE_SOURCE}")
  else()
    set(SRC_FILE "${PARSE_MODULE}.i")
  endif()

  # Let SWIG know that we're compiling C++ files, and what the module is
  set_source_files_properties(${SRC_FILE} PROPERTIES
    CPLUSPLUS TRUE
    SWIG_MODULE_NAME ${PARSE_MODULE})

  SET(SWIG_FORTRAN_EXTRA_FILE_EXTENSION "f90")

  # Get dependencies of main SWIG source file and the files it includes
  # we can't do recursive
  set(SUBDEPS ${SRC_FILE})
  set(DEPENDENCIES)
  foreach(RECURSION 0 1 2)
    SET(OLD_SUBDEPS ${SUBDEPS})
    SET(SUBDEPS)
    foreach(DEPENDENCY ${OLD_SUBDEPS})
      if(DEPENDENCY MATCHES "\\.i$")
        get_swig_dependencies(SUBSUBDEPS ${DEPENDENCY})
        list(APPEND SUBDEPS ${SUBSUBDEPS})
      endif()
    endforeach()
    list(APPEND DEPENDENCIES ${SUBDEPS})
  endforeach()

  #message("Extra dependencies for ${SRC_FILE}:\n ${DEPENDENCIES}" )

  set(SWIG_MODULE_${PARSE_MODULE}_EXTRA_DEPS ${DEPENDENCIES} )

  if (PARSE_LANGUAGE STREQUAL "FORTRAN")
    LIST(APPEND PARSE_EXTRASRC "${CMAKE_CURRENT_BINARY_DIR}/${PARSE_MODULE}.f90")
    # Usually SWIG wrapper libraries need to be built as shared libraries that
    # are never linked into the CMake dependencies themselves (the "MODULE"
    # type); not the case with fortran. This relies on the patched UseSWIG.
    if(BUILD_SHARED_LIBS)
      SET(SWIG_LIBRARY_TYPE SHARED)
    else()
      SET(SWIG_LIBRARY_TYPE STATIC)
    endif()
  else()
    SET(SWIG_LIBRARY_TYPE MODULE)
  endif()

  # add the new target
  LIST(APPEND CMAKE_SWIG_FLAGS "${CMAKE_SWIG_${PARSE_LANGUAGE}_FLAGS}")
  swig_add_module(${PARSE_MODULE} ${PARSE_LANGUAGE}
    ${SRC_FILE} ${PARSE_EXTRASRC})

  # Mangled name of the SWIG target
  set(BUILT_LIBRARY ${SWIG_MODULE_${PARSE_MODULE}_REAL_NAME})

  # It's not always necessary to link against python libraries, but doing so
  # can turn unfortunate run-time errors (dlopen) into link-time errors.
  if(PARSE_LANGUAGE STREQUAL "PYTHON" AND ${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
    if(NOT ${PYTHON_LIBRARIES} MATCHES ".framework")
      # Turn off undefined symbol errors on Mac systems where
      # Python is not installed as a framework
      # see http://bugs.python.org/issue1602133 about _initposix issues
      set_target_properties(${BUILT_LIBRARY}
        PROPERTIES LINK_FLAGS "-undefined suppress -flat_namespace")
    else()
      # Otherwise, link against Python libraries
      swig_link_libraries(${PARSE_MODULE} ${PYTHON_LIBRARIES})
    endif()
  endif()

  # Link against other dependent libraries
  swig_link_libraries(${PARSE_MODULE} ${PARSE_DEPLIBS})

  # Add intra-module dependencies
  foreach(DEPMODULE ${PARSE_DEPMODULES})
    add_dependencies(${BUILT_LIBRARY} _${DEPMODULE})
  endforeach()

  # Include the Python directory and current source directory for the SWIG
  # targets (SWIG processor and compilation of the resulting CXX file.) We don't
  # use the INCLUDE_DIRECTORIES command because because TriBITS will
  # propagate the path if we use INCLUDE_DIRECTORIES.
  # Apply SWIG_CXX_FLAGS to hide warnings and such.
  get_target_property(INCL_DIR ${BUILT_LIBRARY} INCLUDE_DIRECTORIES)
  IF(NOT INCL_DIR)
    SET(INCL_DIR "")
  ENDIF()
  list(APPEND INCL_DIR ${CMAKE_CURRENT_SOURCE_DIR})
  if (PARSE_LANGUAGE STREQUAL "PYTHON")
    list(APPEND INCL_DIR ${PYTHON_INCLUDE_DIRS})
  endif()
  list(REMOVE_DUPLICATES INCL_DIR)
  set_target_properties(${BUILT_LIBRARY} PROPERTIES
    INCLUDE_DIRECTORIES "${INCL_DIR}"
    COMPILE_FLAGS "${SWIG_CXX_FLAGS}")
  if (PARSE_LANGUAGE STREQUAL "FORTRAN")
    set_target_properties(${BUILT_LIBRARY} PROPERTIES
      TYPE "SHARED_LIBRARY")
  endif()


  message(STATUS "Include directories on target ${PARSE_MODULE}: ${INCL_DIR}")

  # define the install targets
  if (PARSE_LANGUAGE STREQUAL "PYTHON")
    install(TARGETS ${BUILT_LIBRARY}
      DESTINATION python)
    install(FILES ${CMAKE_CURRENT_BINARY_DIR}/${PARSE_MODULE}.py
      DESTINATION python)
  endif ()

  # clean up after SWIG (in cmake 2.6 - 2.8)
  set(swig_extra_generated_files)

endfunction()

##---------------------------------------------------------------------------##
##                       end of ExnihiloPyModules.cmake
##---------------------------------------------------------------------------##
