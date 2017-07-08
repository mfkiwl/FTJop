# FTJop


<a Block Diagrams: Genuine JOP x FTJOP ><img src="https://github.com/jardelufc/FTJop/blob/master/jop.jpg"></a>

This is the Source code for FTJOP, the research developed in Master Thesis of Jardel Silveira: http://livros01.livrosgratis.com.br/cp152022.pdf . If you don't know read in portuguese, try it https://github.com/jardelufc/FTJop/blob/master/ftcache_ieeecompsoc.pdf .

Genuine JOP : https://github.com/jop-devel/jop or http://www.jopdesign.com/

If you wanna cite this work (http://www.lbd.dcc.ufmg.br/colecoes/wscad/2009/020.pdf): 

SILVEIRA, R. J. N.; VIANA, D. ; Castro H. ; COELHO, A. A. P. ; SILVEIRA, J. A. N. . Técnica de Proteção de Bytecodes para Processador Java em Tecnologia CMOS. In: WSCAD-SSC 2009: X Simpósio em Sistemas Computacionais, 2009, São Paulo. Anais do WSCAD-SSC 2009: X Simpósio em Sistemas Computacionais, 2009.

Instructions for mounting in ML401 board:

Jop:
Substituir o arquivo mem_sc que estiver lá por mem_sc_normal, e vai no jop_cpu e comenta o sinal crc_bsy se estiver sendo usado

JOP+Ham:

Substituir o arquivo mem_sc que estiver lá por mem_sc_ham(ou coisa parecida), e vai no jop_cpu e comenta o sinal crc_bsy se estiver sendo usado

JOP+HAM+CRC:

Substituir o arquivo mem_sc que estiver lá por mem_sc, e vai no jop_cpu e descomenta o sinal crc_bsy se estiver sendo usado

JopMethodInfoLesc.java is the program for appendind extra CRC check bytes for each method.

Main modifications when compared to genuine JOP are:

1. https://github.com/jardelufc/FTJop/blob/master/vhdl/memory/mem_sc.vhd
2. https://github.com/jardelufc/FTJop/blob/master/vhdl/crc/crc.vhd
3. https://github.com/jardelufc/FTJop/blob/master/vhdl/hamming/hamming/top/ham_top.vhd 
4. https://github.com/jardelufc/FTJop/tree/master/vhdl/hamming/hamming/decoder
5. https://github.com/jardelufc/FTJop/blob/master/vhdl/hamming/hamming/encoder/ham_enc.vhd
6. https://github.com/jardelufc/FTJop/tree/master/vhdl/hamming/hamming/memoriaRB_S4_s18
7. https://github.com/jardelufc/FTJop/blob/master/JopMethodInfoLesc.java
