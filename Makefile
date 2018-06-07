
target := shell
cc := gcc

src = $(wildcard *.c)
objs = $(patsubst  *.c,*.o,$(src))

$(target): $(objs)
	$(cc) -o $@ $(objs)

%.o:%.c
	$(cc) -c -o $@ $<

.PHONY: clean

clean:
	rm -rf $(target) *.o
