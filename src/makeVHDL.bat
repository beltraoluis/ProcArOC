del work-obj93.cf
echo verificando e compilando componentes...
ghdl -a ula.vhd
ghdl -e ula
ghdl -a reg16bits.vhd
ghdl -e reg16bits
ghdl -a mux5bits.vhd
ghdl -e mux5bits
ghdl -a demux5bits.vhd
ghdl -e demux5bits
ghdl -a banco_reg.vhd
ghdl -e banco_reg
ghdl -a reg_ula.vhd
ghdl -e reg_ula
echo verificando testes...
ghdl -a ula_tb.vhd
ghdl -a reg16bits_tb.vhd
ghdl -a banco_reg_tb.vhd