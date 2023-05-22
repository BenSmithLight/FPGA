transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {f:/altera/13.0/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {f:/altera/13.0/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {f:/altera/13.0/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {f:/altera/13.0/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {f:/altera/13.0/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/cyclonev_ver
vmap cyclonev_ver ./verilog_libs/cyclonev_ver
vlog -vlog01compat -work cyclonev_ver {f:/altera/13.0/quartus/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_ver {f:/altera/13.0/quartus/eda/sim_lib/mentor/cyclonev_hmi_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_ver {f:/altera/13.0/quartus/eda/sim_lib/cyclonev_atoms.v}

vlib verilog_libs/cyclonev_hssi_ver
vmap cyclonev_hssi_ver ./verilog_libs/cyclonev_hssi_ver
vlog -vlog01compat -work cyclonev_hssi_ver {f:/altera/13.0/quartus/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_hssi_ver {f:/altera/13.0/quartus/eda/sim_lib/cyclonev_hssi_atoms.v}

vlib verilog_libs/cyclonev_pcie_hip_ver
vmap cyclonev_pcie_hip_ver ./verilog_libs/cyclonev_pcie_hip_ver
vlog -vlog01compat -work cyclonev_pcie_hip_ver {f:/altera/13.0/quartus/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_pcie_hip_ver {f:/altera/13.0/quartus/eda/sim_lib/cyclonev_pcie_hip_atoms.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl {E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/fifo_read.v}
vlog -vlog01compat -work work +incdir+E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/sdram {E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/sdram/sdram_write.v}
vlog -vlog01compat -work work +incdir+E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/sdram {E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/sdram/sdram_top.v}
vlog -vlog01compat -work work +incdir+E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/sdram {E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/sdram/sdram_read.v}
vlog -vlog01compat -work work +incdir+E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/sdram {E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/sdram/sdram_init.v}
vlog -vlog01compat -work work +incdir+E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/sdram {E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/sdram/sdram_ctrl.v}
vlog -vlog01compat -work work +incdir+E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/sdram {E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/sdram/sdram_arbit.v}
vlog -vlog01compat -work work +incdir+E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/sdram {E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/sdram/sdram_a_ref.v}
vlog -vlog01compat -work work +incdir+E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/sdram {E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/sdram/fifo_ctrl.v}
vlog -vlog01compat -work work +incdir+E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/project/ip_core/fifo_data {E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/project/ip_core/fifo_data/fifo_data.v}
vlog -vlog01compat -work work +incdir+E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/project/ip_core/clk_gen {E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/project/ip_core/clk_gen/clk_gen.v}
vlog -vlog01compat -work work +incdir+E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl {E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/uart_tx.v}
vlog -vlog01compat -work work +incdir+E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl {E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/uart_sdram.v}
vlog -vlog01compat -work work +incdir+E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl {E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/rtl/uart_rx.v}
vlog -vlog01compat -work work +incdir+E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/project/ip_core/read_fifo {E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/project/ip_core/read_fifo/read_fifo.v}
vlog -vlog01compat -work work +incdir+E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/project/db {E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/project/db/clk_gen_altpll.v}

vlog -vlog01compat -work work +incdir+E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/project/../sim/tb_sdram_top {E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/project/../sim/tb_sdram_top/sdram_model_plus.v}
vlog -vlog01compat -work work +incdir+E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/project/../sim/tb_sdram_top {E:/work_2/licheng/ebf_ep4ce10_pro_tutorial_code-master/ebf_ep4ce10_pro_tutorial_code-master/44_uart_sdram/project/../sim/tb_sdram_top/tb_sdram_top.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb_sdram_top

add wave *
view structure
view signals
run 1 us
