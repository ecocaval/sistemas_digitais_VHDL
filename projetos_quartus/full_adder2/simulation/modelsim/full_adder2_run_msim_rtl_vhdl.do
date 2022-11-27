transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ecoca/OneDrive/Área de Trabalho/VHDL/projetos_quartus/full_adder2/full_adder2.vhd}

