# create object code from each of the four files

randmain: randmain.o randcpuid.o randcpuid.h
	$(CC) $(CFLAGS) -ldl -Wl,-rpath=$(PWD) randmain.o randcpuid.o -o $@

randmain.o: randmain.c
	$(CC) $(CFLAGS) -c randmain.c -o $@

randcpuid.o: randcpuid.c randcpuid.h
	$(CC) $(CFLAGS) -c randcpuid.c -o $@

randlibsw.o: randlibsw.c randlib.h
	$(CC) $(CFLAGS) -fPIC -c randlibsw.c -o $@

randlibsw.so: randlibsw.o
	$(CC) $(CFLAGS) -shared -fPIC -ldl randlibsw.o -o $@

randlibhw.o: randlibhw.c randlib.h
	$(CC) $(CFLAGS) -fPIC -c randlibhw.c -o $@

randlibhw.so: randlibhw.o
	$(CC) $(CFLAGS) -shared -fPIC randlibhw.o -o $@
