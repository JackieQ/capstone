set moduleName packet_filtering
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {packet_filtering}
set C_modelType { void 0 }
set C_modelArgList {
	{ from_eth_V int 73 regular {fifo 0 volatile }  }
	{ to_shell_V int 73 regular {fifo 1 volatile }  }
	{ to_pr_V int 73 regular {fifo 1 volatile }  }
	{ src_mac_addr_V int 48 regular  }
	{ debug_bit_V int 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "from_eth_V", "interface" : "fifo", "bitwidth" : 73, "direction" : "READONLY"} , 
 	{ "Name" : "to_shell_V", "interface" : "fifo", "bitwidth" : 73, "direction" : "WRITEONLY"} , 
 	{ "Name" : "to_pr_V", "interface" : "fifo", "bitwidth" : 73, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_mac_addr_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "debug_bit_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ from_eth_V_dout sc_in sc_lv 73 signal 0 } 
	{ from_eth_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ from_eth_V_read sc_out sc_logic 1 signal 0 } 
	{ to_shell_V_din sc_out sc_lv 73 signal 1 } 
	{ to_shell_V_full_n sc_in sc_logic 1 signal 1 } 
	{ to_shell_V_write sc_out sc_logic 1 signal 1 } 
	{ to_pr_V_din sc_out sc_lv 73 signal 2 } 
	{ to_pr_V_full_n sc_in sc_logic 1 signal 2 } 
	{ to_pr_V_write sc_out sc_logic 1 signal 2 } 
	{ src_mac_addr_V sc_in sc_lv 48 signal 3 } 
	{ debug_bit_V sc_in sc_lv 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "from_eth_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":73, "type": "signal", "bundle":{"name": "from_eth_V", "role": "dout" }} , 
 	{ "name": "from_eth_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_eth_V", "role": "empty_n" }} , 
 	{ "name": "from_eth_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_eth_V", "role": "read" }} , 
 	{ "name": "to_shell_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":73, "type": "signal", "bundle":{"name": "to_shell_V", "role": "din" }} , 
 	{ "name": "to_shell_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_shell_V", "role": "full_n" }} , 
 	{ "name": "to_shell_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_shell_V", "role": "write" }} , 
 	{ "name": "to_pr_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":73, "type": "signal", "bundle":{"name": "to_pr_V", "role": "din" }} , 
 	{ "name": "to_pr_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_pr_V", "role": "full_n" }} , 
 	{ "name": "to_pr_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_pr_V", "role": "write" }} , 
 	{ "name": "src_mac_addr_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "src_mac_addr_V", "role": "default" }} , 
 	{ "name": "debug_bit_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "debug_bit_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "packet_filtering",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "from_eth_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "from_eth_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "to_shell_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "to_shell_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "to_pr_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "to_pr_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mac_addr_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "debug_bit_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "first_packet_org_dat", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "first_packet_org_las", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "first_packet_org_tke", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "first_packet_in_data", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "second_packet_org_da", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "second_packet_org_la", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "second_packet_org_tk", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_out_last_s", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	packet_filtering {
		from_eth_V {Type I LastRead 0 FirstWrite -1}
		to_shell_V {Type O LastRead -1 FirstWrite 1}
		to_pr_V {Type O LastRead -1 FirstWrite 1}
		src_mac_addr_V {Type I LastRead 0 FirstWrite -1}
		debug_bit_V {Type I LastRead 0 FirstWrite -1}
		state_V {Type IO LastRead -1 FirstWrite -1}
		first_packet_org_dat {Type IO LastRead -1 FirstWrite -1}
		first_packet_org_las {Type IO LastRead -1 FirstWrite -1}
		first_packet_org_tke {Type IO LastRead -1 FirstWrite -1}
		first_packet_in_data {Type IO LastRead -1 FirstWrite -1}
		second_packet_org_da {Type IO LastRead -1 FirstWrite -1}
		second_packet_org_la {Type IO LastRead -1 FirstWrite -1}
		second_packet_org_tk {Type IO LastRead -1 FirstWrite -1}
		app_packet_out_last_s {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	from_eth_V { ap_fifo {  { from_eth_V_dout fifo_data 0 73 }  { from_eth_V_empty_n fifo_status 0 1 }  { from_eth_V_read fifo_update 1 1 } } }
	to_shell_V { ap_fifo {  { to_shell_V_din fifo_data 1 73 }  { to_shell_V_full_n fifo_status 0 1 }  { to_shell_V_write fifo_update 1 1 } } }
	to_pr_V { ap_fifo {  { to_pr_V_din fifo_data 1 73 }  { to_pr_V_full_n fifo_status 0 1 }  { to_pr_V_write fifo_update 1 1 } } }
	src_mac_addr_V { ap_none {  { src_mac_addr_V in_data 0 48 } } }
	debug_bit_V { ap_none {  { debug_bit_V in_data 0 1 } } }
}
