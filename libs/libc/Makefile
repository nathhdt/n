#
# MIT License
#
# Copyright (c) 2024 Nathan H.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#

include ../../config.mk

LIB	= libc.a
OBJS	= \
	  memchr.o \
	  memcmp.o \
	  memcpy.o \
	  memmove.o \
	  memset.o \
	  strcasecmp.o \
	  strncasecmp.o \
	  strcpy.o \
	  strncpy.o \
	  strlen.o \
	  strnlen.o \
	  strcat.o \
	  strcmp.o \
	  strncmp.o \
	  malloc.o \
	  strdup.o \
	  puts.o \
	  printf.o \

DEPS	= $(OBJS:.o=.d)

$(OBJS): CPPFLAGS	+= -MMD

all: $(LIB)

$(LIB): $(OBJS)
	$(AR) $(ARFLAGS) $@ $^

clean:
	$(RM) $(OBJS) $(DEPS) $(LIB)

-include $(DEPS)
