
#import <CoreGraphics/CoreGraphics.h>


typedef struct {
    unsigned foo;
    unsigned bar;
} Pair;


typedef struct {
    double real;
    double img;
} Complex;


extern unsigned get_num();

extern double get_float();

extern unsigned inc_num(unsigned num);

extern unsigned add_nums(unsigned num1, unsigned num2);

extern unsigned get_num_ptr(unsigned *num);

extern unsigned inc_num_ptr(unsigned *num);

extern double inc_float_ptr(double *num);

extern Pair get_pair();

extern Pair inc_pair(Pair pair);

extern Pair inc_pair_ptr(Pair *pair);

extern Complex get_complex();

extern Complex inc_complex(Complex complex);

extern Complex inc_complex_ptr(Complex *complex);
