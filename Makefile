all:
	gcc -fPIC -shared -rdynamic cfunc.c -o cfunc.o	
