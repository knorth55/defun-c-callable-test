static int (*g)(); /* variable to store Lisp function entry */
double sync(x)
double x;
{ extern double sin();
return(sin(x)/x);}
char *upperstring(s)
char *s;
{ char *ss=s;
while (*s) { if (islower(*s)) *s=toupper(*s); s++;}
return(ss);}
int setlfunc(f) /* remember the argument in g just to see */
int (*f)(); /* how Lisp function can be called from C */
{ g=f;}
int callfunc(x)
/* apply the Lisp function saved in g to the arg.*/
int x;
{ return((*g)(x));}
