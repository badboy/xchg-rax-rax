# `xchg rax, rax`

So I got myself a hard copy of [`xchg rax, rax`](https://www.xorpd.net/pages/xchg_rax/snip_00.html).
Now I have to learn enough `x86_64` assembler to read it.
And probably also some `gdb` or `lldb` to inspect the running program.

I'll try to do that.

## Build

Individual chapters are in their respective `0x??.asm` files, probably with added comments.
They can be build using `make`:

```
make 0x00
```

Resulting in a binary file `0x00`

## Debug

Break on main, inspect the registers, run the full thing and inspect it again.

```
gdb 0x00
(gdb) break main
(gdb) run
(gdb) info registers
rax            0x401110            4198672
rbx            0x7fffffffc968      140737488341352
rcx            0x403e00            4210176
rdx            0x7fffffffc978      140737488341368
rsi            0x7fffffffc968      140737488341352
rdi            0x1                 1
rbp            0x1                 0x1
-- snip --
(gdb) continue
```

| Command | Short | Meaning |
| ------- | ----- | ------- |
| break main | b main | Set a breakpoint on the entry of function `main` |
| run | r | Run the program until a breakpoint or end |
| info registers | i r | Show values of all registers |
| continue | c | Continue running the program |
