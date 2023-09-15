%.o: %.asm
	nasm -felf64 $<
%: %.o
	gcc -z noexecstack -o $@ $<

template:
	@echo "Copy template.asm to \$$name.asm and run \`make \$$name\`"
.PHONY: template
