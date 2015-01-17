/*!
* This file has been dynamically generated by Class Interface Xml (CIX) 
* DO NOT MODIFY THIS FILE -- CHANGES WILL BE OVERWRITTEN UPON REGENERATION
* If changes need to occur, modify the appropriate CIX xml file
* Date Generated: LET VERSION CONTROL TRACK
* If any issues are experiences with this generated file that cannot be fixed
* with adjustment of the CIX xml file, please contact Robert A. Lefebvre, raq@ornl.gov
*/
#ifndef VEC_DBLINTERFACE_H
#define VEC_DBLINTERFACE_H
#include "ScaleSTL/Vec.h"
typedef ScaleSTL::Vec<double> ScaleSTL_Vec_Dbl;
#ifdef __cplusplus
extern "C" {
#endif
void* ScaleSTL_Vec_Dbl_initialize_size(int * size );
void* ScaleSTL_Vec_Dbl_initialize_from(ScaleSTL_Vec_Dbl * orig );
int ScaleSTL_Vec_Dbl_size(void * ScaleSTL_Vec_Dbl_ptr);
int ScaleSTL_Vec_Dbl_element_length(void * ScaleSTL_Vec_Dbl_ptr,int * index);
int ScaleSTL_Vec_Dbl_total_element_length(void * ScaleSTL_Vec_Dbl_ptr);
int ScaleSTL_Vec_Dbl_max_element_length(void * ScaleSTL_Vec_Dbl_ptr);
void ScaleSTL_Vec_Dbl_resize(void * ScaleSTL_Vec_Dbl_ptr,int * newSize);
void ScaleSTL_Vec_Dbl_reserve(void * ScaleSTL_Vec_Dbl_ptr,int * maxSize);
void ScaleSTL_Vec_Dbl_resize_fill(void * ScaleSTL_Vec_Dbl_ptr,int * newSize,double * fill);
bool ScaleSTL_Vec_Dbl_empty(void * ScaleSTL_Vec_Dbl_ptr);
double ScaleSTL_Vec_Dbl_at(void * ScaleSTL_Vec_Dbl_ptr,int * index);
void ScaleSTL_Vec_Dbl_set(void * ScaleSTL_Vec_Dbl_ptr,int * index,double * value);
double ScaleSTL_Vec_Dbl_front(void * ScaleSTL_Vec_Dbl_ptr);
double ScaleSTL_Vec_Dbl_back(void * ScaleSTL_Vec_Dbl_ptr);
void ScaleSTL_Vec_Dbl_push_back(void * ScaleSTL_Vec_Dbl_ptr,double * newValue);
void ScaleSTL_Vec_Dbl_pop_back(void * ScaleSTL_Vec_Dbl_ptr);
void ScaleSTL_Vec_Dbl_insert(void * ScaleSTL_Vec_Dbl_ptr,int * index,double * item);
void ScaleSTL_Vec_Dbl_erase(void * ScaleSTL_Vec_Dbl_ptr,int * index);
bool ScaleSTL_Vec_Dbl_contains(void * ScaleSTL_Vec_Dbl_ptr,double * item);
void ScaleSTL_Vec_Dbl_clear(void * ScaleSTL_Vec_Dbl_ptr);
void* ScaleSTL_Vec_Dbl_initialize();
void ScaleSTL_Vec_Dbl_destroy(void * ScaleSTL_Vec_Dbl_ptr);
#ifdef __cplusplus
}
#endif
#endif /* VEC_DBLINTERFACE_H */
