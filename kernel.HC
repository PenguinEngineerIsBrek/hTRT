class IDT_ENTRY_32{
	I16 offset1;
	I16 selector;
	I8 zero;
	I8 attr;
	I16 offset2;
};
class IDTR_32{
	IDT_ENTRY_32 base;
	I16 limit;
};

asm {
kernel32:
	hlt
}

public _extern kernel32 U0 kernel32main();

U0 Main(){
	kernel32main();
}
