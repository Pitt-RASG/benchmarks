CFLAGS	:= -Wall -g3 -O0
TARGETS	:= \
	arr_block \
	arr_page \
	arr_standard \
	cpu file_io \
	file_io_no_sleep \
	ll_block \
	ll_page \
	ll_standard \
	syscall

%: %.c
	$(CC) $(CFLAGS) $< -o $@

all: $(TARGETS)

clean:
	rm -rf $(TARGETS)

run: all
	$(foreach target,$(TARGETS),./$(target);)
