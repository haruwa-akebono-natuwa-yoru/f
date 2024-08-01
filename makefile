CC  = gcc
#CFLAGS    = -O3 -shared -fPIC -Wall -Wextra -Wformat-security -Wstack-protector -fstack-protector-strong
CFLAGS    = -g -Wall -Wextra -Wformat-security -Wstack-protector -fstack-protector-strong

TARGET  = f fu
SRCS    = f.c fu.c f_common.c
OBJS    = $(SRCS:.c=.o)
INCDIR  = -I../common -I./
LIBS    = -l sqlite3 -l common

$(TARGET): $(OBJS)
	$(CC) -o f f.o f_common.o $(LIBDIR) $(LIBS)	
	$(CC) -o fu fu.o f_common.o  $(LIBDIR) $(LIBS)	
$(OBJS): $(SRCS)
	$(CC) $(CFLAGS) $(INCDIR) -c $(SRCS)

all: clean $(OBJS) $(TARGET)
clean:
	-rm -f $(OBJS) $(TARGET) *.d
