%module issue53

%include <std_shared_ptr.i>

%inline %{
struct NO {
    enum { classic = 1 };
};
%}

%inline %{
template<class T, int classic = T::classic>
class A {
public:
    int g(const A<T>& b);
    int f(const A<T,classic>& b);
    int gs(std::shared_ptr<A<T> > bsp);
    int fs(std::shared_ptr<A<T,classic> > bsp);
};
%}

%shared_ptr(A<NO>)
%template(At) A<NO>;
