open Swig
type c_enum_type = [ 
  `unknown
]
type c_enum_value = [ 
  `Int of int
]

type c_obj = c_enum_value c_obj_t
val module_name : string

exception BadArgs of string
exception BadMethodName of c_obj * string * string
exception NotObject of c_obj
exception NotEnumType of c_obj
exception LabelNotFromThisEnum of c_obj
exception InvalidDirectorCall of c_obj

val _set_something : c_obj -> c_obj
val _get_something : c_obj -> c_obj
val enum_to_int : c_enum_type -> c_obj -> Swig.c_obj
val int_to_enum : c_enum_type -> int -> c_obj

  val swig_val : c_enum_type -> c_obj -> Swig.c_obj

