SRC = yaml-cli-multi.c
OBJ = ./yaml-cli-multi

.PHONY: clean yaml-cli-multi
yaml-cli-multi: $(OBJ)

$(OBJ): $(SRC:%.c=%.o)
	$(CC) $^ -rdynamic $(OPT) -o $@

%.o: %.c Makefile
	$(CC) -c $< $(OPT) -o $@

clean:
	rm -rf $(SRC:%.c=%.o) $(OBJ)