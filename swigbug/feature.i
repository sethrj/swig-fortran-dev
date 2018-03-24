%module feature

%feature("feature_match_name", "abc") abc;
%feature("feature_match_name", "ABC") ABC;

%feature("feature_match_name", "def") def;
%feature("feature_match_name", "DEF") DEF;
%feature("feature_match_name", "_def") _def;

%ignore ABC;
%ignore DEF;

%typemap("in") ABC* %{
#error ABC* should be ignored
%}
%typemap("in") DEF* %{
#error DEF* should be ignored
%}

%typemap("in") abc* %{
/* abc* shouldn't ever show up */
%}
%typemap("in") def* %{
/* def* shouldn't ever show up */
%}

%inline %{
typedef struct abc {
    char letter;
} ABC;

typedef struct def {
    char letter;
} DEF;

void do_abc(ABC*);
void do_def(DEF*);
%}
