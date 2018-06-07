
target := shell
cc := gcc

src = $(wildcard *.c)
objs = $(patsubst  *.c,*.o,$(src))

cflags += -std=c99
ifeq ($(v), d)
cflags += -g
endif

$(target): $(objs)
	$(cc) -o $@ $(cflags) $(objs)

%.o:%.c
	$(cc) -c -o $(cflags) $@ $<

.PHONY: clean

clean:
	rm -rf $(target) *.o
