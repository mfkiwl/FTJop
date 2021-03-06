--
--	jtbl.vhd
--
--	jump table for java bc to jvm address
--
--		DONT edit this file!
--		generated by Jopa.java
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity jtbl is
port (
	bcode	: in std_logic_vector(7 downto 0);
	int_pend	: in  std_logic;
	exc_pend	: in  std_logic;
	q		: out std_logic_vector(10 downto 0)
);
end jtbl;

--
--	unregistered rdbcode
--	unregistered dout
--
architecture rtl of jtbl is

	signal	addr	: std_logic_vector(10 downto 0);

begin

process(bcode) begin

	case bcode is

		when "00000000" => addr <= "00001000010";	--	0042	nop
		when "00000010" => addr <= "00001000011";	--	0043	iconst_m1
		when "00000001" => addr <= "00001000100";	--	0044	aconst_null
		when "00000011" => addr <= "00001000100";	--	0044	iconst_0
		when "00000100" => addr <= "00001000101";	--	0045	iconst_1
		when "00000101" => addr <= "00001000110";	--	0046	iconst_2
		when "00000110" => addr <= "00001000111";	--	0047	iconst_3
		when "00000111" => addr <= "00001001000";	--	0048	iconst_4
		when "00001000" => addr <= "00001001001";	--	0049	iconst_5
		when "00010000" => addr <= "00001001010";	--	004a	bipush
		when "00010001" => addr <= "00001001100";	--	004c	sipush
		when "00010010" => addr <= "00001001111";	--	004f	ldc
		when "00010011" => addr <= "00001010110";	--	0056	ldc_w
		when "00011001" => addr <= "00001011110";	--	005e	aload
		when "00010111" => addr <= "00001011110";	--	005e	fload
		when "00010101" => addr <= "00001011110";	--	005e	iload
		when "00101010" => addr <= "00001100000";	--	0060	aload_0
		when "00100010" => addr <= "00001100000";	--	0060	fload_0
		when "00011010" => addr <= "00001100000";	--	0060	iload_0
		when "00101011" => addr <= "00001100001";	--	0061	aload_1
		when "00100011" => addr <= "00001100001";	--	0061	fload_1
		when "00011011" => addr <= "00001100001";	--	0061	iload_1
		when "00101100" => addr <= "00001100010";	--	0062	aload_2
		when "00100100" => addr <= "00001100010";	--	0062	fload_2
		when "00011100" => addr <= "00001100010";	--	0062	iload_2
		when "00101101" => addr <= "00001100011";	--	0063	aload_3
		when "00100101" => addr <= "00001100011";	--	0063	fload_3
		when "00011101" => addr <= "00001100011";	--	0063	iload_3
		when "00111010" => addr <= "00001100100";	--	0064	astore
		when "00111000" => addr <= "00001100100";	--	0064	fstore
		when "00110110" => addr <= "00001100100";	--	0064	istore
		when "01001011" => addr <= "00001100110";	--	0066	astore_0
		when "01000011" => addr <= "00001100110";	--	0066	fstore_0
		when "00111011" => addr <= "00001100110";	--	0066	istore_0
		when "01001100" => addr <= "00001100111";	--	0067	astore_1
		when "01000100" => addr <= "00001100111";	--	0067	fstore_1
		when "00111100" => addr <= "00001100111";	--	0067	istore_1
		when "01001101" => addr <= "00001101000";	--	0068	astore_2
		when "01000101" => addr <= "00001101000";	--	0068	fstore_2
		when "00111101" => addr <= "00001101000";	--	0068	istore_2
		when "01001110" => addr <= "00001101001";	--	0069	astore_3
		when "01000110" => addr <= "00001101001";	--	0069	fstore_3
		when "00111110" => addr <= "00001101001";	--	0069	istore_3
		when "01010111" => addr <= "00001101010";	--	006a	pop
		when "01011000" => addr <= "00001101011";	--	006b	pop2
		when "01011001" => addr <= "00001101101";	--	006d	dup
		when "01011010" => addr <= "00001101110";	--	006e	dup_x1
		when "01011011" => addr <= "00001110011";	--	0073	dup_x2
		when "01011100" => addr <= "00001111010";	--	007a	dup2
		when "01011101" => addr <= "00010000000";	--	0080	dup2_x1
		when "01011110" => addr <= "00010001000";	--	0088	dup2_x2
		when "01011111" => addr <= "00010010010";	--	0092	swap
		when "01100000" => addr <= "00010010110";	--	0096	iadd
		when "01100100" => addr <= "00010010111";	--	0097	isub
		when "01110100" => addr <= "00010011000";	--	0098	ineg
		when "01111110" => addr <= "00010011100";	--	009c	iand
		when "10000000" => addr <= "00010011101";	--	009d	ior
		when "10000010" => addr <= "00010011110";	--	009e	ixor
		when "01111000" => addr <= "00010011111";	--	009f	ishl
		when "01111010" => addr <= "00010100000";	--	00a0	ishr
		when "01111100" => addr <= "00010100001";	--	00a1	iushr
		when "01101000" => addr <= "00010100010";	--	00a2	imul
		when "10000100" => addr <= "00010101110";	--	00ae	iinc
		when "10010010" => addr <= "00010110110";	--	00b6	i2c
		when "11000110" => addr <= "00010111000";	--	00b8	ifnull
		when "11000111" => addr <= "00010111000";	--	00b8	ifnonnull
		when "10011001" => addr <= "00010111000";	--	00b8	ifeq
		when "10011010" => addr <= "00010111000";	--	00b8	ifne
		when "10011011" => addr <= "00010111000";	--	00b8	iflt
		when "10011100" => addr <= "00010111000";	--	00b8	ifge
		when "10011101" => addr <= "00010111000";	--	00b8	ifgt
		when "10011110" => addr <= "00010111000";	--	00b8	ifle
		when "10100101" => addr <= "00010111100";	--	00bc	if_acmpeq
		when "10100110" => addr <= "00010111100";	--	00bc	if_acmpne
		when "10011111" => addr <= "00010111100";	--	00bc	if_icmpeq
		when "10100000" => addr <= "00010111100";	--	00bc	if_icmpne
		when "10100001" => addr <= "00010111100";	--	00bc	if_icmplt
		when "10100010" => addr <= "00010111100";	--	00bc	if_icmpge
		when "10100011" => addr <= "00010111100";	--	00bc	if_icmpgt
		when "10100100" => addr <= "00010111100";	--	00bc	if_icmple
		when "10100111" => addr <= "00011000000";	--	00c0	goto
		when "11100000" => addr <= "00011000100";	--	00c4	getstatic_ref
		when "10110010" => addr <= "00011000100";	--	00c4	getstatic
		when "10110011" => addr <= "00011001011";	--	00cb	putstatic
		when "11100010" => addr <= "00011010011";	--	00d3	getfield_ref
		when "10110100" => addr <= "00011010011";	--	00d3	getfield
		when "11101001" => addr <= "00011010110";	--	00d6	jopsys_getfield
		when "10110101" => addr <= "00011011011";	--	00db	putfield
		when "11101010" => addr <= "00011011111";	--	00df	jopsys_putfield
		when "10111100" => addr <= "00011100100";	--	00e4	newarray
		when "10111110" => addr <= "00011111011";	--	00fb	arraylength
		when "01010100" => addr <= "00100000001";	--	0101	bastore
		when "01010101" => addr <= "00100000001";	--	0101	castore
		when "01010001" => addr <= "00100000001";	--	0101	fastore
		when "01001111" => addr <= "00100000001";	--	0101	iastore
		when "01010110" => addr <= "00100000001";	--	0101	sastore
		when "00110010" => addr <= "00100000111";	--	0107	aaload
		when "00110011" => addr <= "00100000111";	--	0107	baload
		when "00110100" => addr <= "00100000111";	--	0107	caload
		when "00110000" => addr <= "00100000111";	--	0107	faload
		when "00101110" => addr <= "00100000111";	--	0107	iaload
		when "00110101" => addr <= "00100000111";	--	0107	saload
		when "11000010" => addr <= "00100001100";	--	010c	monitorenter
		when "11000011" => addr <= "00100011110";	--	011e	monitorexit
		when "10110111" => addr <= "00100110010";	--	0132	invokespecial
		when "10111000" => addr <= "00100110010";	--	0132	invokestatic
		when "11011110" => addr <= "00100111010";	--	013a	jopsys_invoke
		when "10111001" => addr <= "00100111110";	--	013e	invokeinterface
		when "11101100" => addr <= "00101110000";	--	0170	invokesuper
		when "10110110" => addr <= "00110011111";	--	019f	invokevirtual
		when "10110000" => addr <= "01000000001";	--	0201	areturn
		when "10101110" => addr <= "01000000001";	--	0201	freturn
		when "10101100" => addr <= "01000000001";	--	0201	ireturn
		when "10101111" => addr <= "01000011000";	--	0218	dreturn
		when "10101101" => addr <= "01000011000";	--	0218	lreturn
		when "10110001" => addr <= "01000110001";	--	0231	return
		when "00010100" => addr <= "01001011010";	--	025a	ldc2_w
		when "00001001" => addr <= "01001101011";	--	026b	lconst_0
		when "00001010" => addr <= "01001101101";	--	026d	lconst_1
		when "10001000" => addr <= "01001101111";	--	026f	l2i
		when "00100110" => addr <= "01001110010";	--	0272	dload_0
		when "00011110" => addr <= "01001110010";	--	0272	lload_0
		when "00100111" => addr <= "01001110100";	--	0274	dload_1
		when "00011111" => addr <= "01001110100";	--	0274	lload_1
		when "00101000" => addr <= "01001110110";	--	0276	dload_2
		when "00100000" => addr <= "01001110110";	--	0276	lload_2
		when "00101001" => addr <= "01001111000";	--	0278	dload_3
		when "00100001" => addr <= "01001111000";	--	0278	lload_3
		when "00011000" => addr <= "01010000011";	--	0283	dload
		when "00010110" => addr <= "01010000011";	--	0283	lload
		when "01000111" => addr <= "01010001110";	--	028e	dstore_0
		when "00111111" => addr <= "01010001110";	--	028e	lstore_0
		when "01001000" => addr <= "01010010000";	--	0290	dstore_1
		when "01000000" => addr <= "01010010000";	--	0290	lstore_1
		when "01001001" => addr <= "01010010010";	--	0292	dstore_2
		when "01000001" => addr <= "01010010010";	--	0292	lstore_2
		when "01001010" => addr <= "01010010100";	--	0294	dstore_3
		when "01000010" => addr <= "01010010100";	--	0294	lstore_3
		when "00111001" => addr <= "01010011111";	--	029f	dstore
		when "00110111" => addr <= "01010011111";	--	029f	lstore
		when "11100100" => addr <= "01010101010";	--	02aa	getstatic_long
		when "11100101" => addr <= "01010111010";	--	02ba	putstatic_long
		when "11100110" => addr <= "01011001011";	--	02cb	getfield_long
		when "11100111" => addr <= "01011100101";	--	02e5	putfield_long
		when "01010000" => addr <= "01100000010";	--	0302	lastore
		when "00101111" => addr <= "01100110010";	--	0332	laload
		when "10111011" => addr <= "01110000110";	--	0386	new
		when "10111101" => addr <= "01110000110";	--	0386	anewarray
		when "11000000" => addr <= "01110000110";	--	0386	checkcast
		when "11000001" => addr <= "01110000110";	--	0386	instanceof
		when "11100011" => addr <= "01110100011";	--	03a3	putfield_ref
		when "11100001" => addr <= "01110100011";	--	03a3	putstatic_ref
		when "11010001" => addr <= "01110111011";	--	03bb	jopsys_rd
		when "11010011" => addr <= "01110111011";	--	03bb	jopsys_rdmem
		when "11010010" => addr <= "01110111111";	--	03bf	jopsys_wr
		when "11010100" => addr <= "01110111111";	--	03bf	jopsys_wrmem
		when "11010101" => addr <= "01111000100";	--	03c4	jopsys_rdint
		when "11010110" => addr <= "01111000111";	--	03c7	jopsys_wrint
		when "11010111" => addr <= "01111001010";	--	03ca	jopsys_getsp
		when "11011000" => addr <= "01111001101";	--	03cd	jopsys_setsp
		when "11011001" => addr <= "01111010001";	--	03d1	jopsys_getvp
		when "11011010" => addr <= "01111010010";	--	03d2	jopsys_setvp
		when "11011011" => addr <= "01111010100";	--	03d4	jopsys_int2ext
		when "11011100" => addr <= "01111101111";	--	03ef	jopsys_ext2int
		when "11101000" => addr <= "10000001011";	--	040b	jopsys_memcpy
		when "11011101" => addr <= "10000010000";	--	0410	jopsys_nop

		when others => addr <= "01101110011";		--	0373	sys_noim
	end case;
end process;

process(int_pend, exc_pend, addr) begin

	q <= addr;
	if exc_pend='1' then
		q <= "01101100111";		--	0367	sys_exc
	elsif int_pend='1' then
		q <= "01101011101";		--	035d	sys_int
	end if;
end process;

end rtl;
