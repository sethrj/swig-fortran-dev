#include "Nemesis/harness/DBC.hh"
#include <cstring>
#include <cstddef>
#include <algorithm>

namespace ScaleSTL {

template<class T>
Vec<T>::Vec(){
}

template<class T>
Vec<T>::Vec(size_t num_elements) : std::vector<T>(num_elements){
}

template<class T>
Vec<T>::Vec(const std::vector<T>& orig) : std::vector<T>(orig){
}

template<class T>
Vec<T>::~Vec() {
}

template<class T>
void Vec<T>::insert(size_t index, const T& item){
    if(index>=this->size())this->resize(index+1);
    std::vector<T>::insert(this->begin()+index, item);
}

template<class T>
void Vec<T>::set(size_t index, const T& item){
    Require(index>=0 && (size_t)index<this->size());
    this->at(index)=item;
}

template<class T>
void Vec<T>::erase(size_t index){
    Require(index>=0 && (size_t)index<this->size());
    std::vector<T>::erase(this->begin()+index);
}

template<class T>
bool Vec<T>::contains(const T& item){
    for( size_t i = 0; i < this->size(); i++){
        if( item == this->at(i) ){
            return true;
        }
    }
    return false;
}

template<class T>
size_t Vec<T>::element_length(size_t index){
    Require(index>=0 && (size_t)index<this->size());
    return sizeof(this->at(index))/sizeof(int);
}

template<> inline
size_t Vec<std::string>::element_length(size_t index){
    Require(index>=0 && (size_t)index<this->size());
    return strlen(this->at(index).c_str());
}

template<class T>
size_t Vec<T>::max_element_length(){
    size_t max=0;
    for(size_t i=0; i<this->size(); ++i){
        max = std::max(max,element_length(i));
    }
    return max;
}

template<class T>
size_t Vec<T>::total_element_length(){
    size_t total=0;
    for(size_t i=0; i<this->size(); ++i){
        total+=element_length(i);
    }
    return total;
}


} //namespace
