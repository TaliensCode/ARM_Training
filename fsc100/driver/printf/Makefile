CC=arm-none-eabi-gcc
LIBDIR=../../lib
CFLAGS=-c -g  

OBJS+=$(LIBDIR)/_divsi3.o
OBJS+=$(LIBDIR)/_udivsi3.o
OBJS+=$(LIBDIR)/_umodsi3.o
OBJS+=$(LIBDIR)/printf.o

all:$(OBJS)

#���ñ������
$(LIBDIR)/%.o:%.c
	$(CC) $(CFLAGS) $< -o $@ $(HEADPATH)
	
$(LIBDIR)/%.o:%.S
	$(CC) $(CFLAGS) $< -o $@ $(HEADPATH)