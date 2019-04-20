// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _mac_addr_filter_v4_HH_
#define _mac_addr_filter_v4_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "packet_filtering.h"

namespace ap_rtl {

struct mac_addr_filter_v4 : public sc_module {
    // Port declarations 13
    sc_out< sc_lv<73> > to_shell_V_din;
    sc_in< sc_logic > to_shell_V_full_n;
    sc_out< sc_logic > to_shell_V_write;
    sc_out< sc_lv<73> > to_pr_V_din;
    sc_in< sc_logic > to_pr_V_full_n;
    sc_out< sc_logic > to_pr_V_write;
    sc_in< sc_lv<73> > from_eth_V_dout;
    sc_in< sc_logic > from_eth_V_empty_n;
    sc_out< sc_logic > from_eth_V_read;
    sc_in< sc_lv<48> > src_mac_addr_V;
    sc_in< sc_lv<1> > debug_bit_V;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;


    // Module declarations
    mac_addr_filter_v4(sc_module_name name);
    SC_HAS_PROCESS(mac_addr_filter_v4);

    ~mac_addr_filter_v4();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    packet_filtering* packet_filtering_U0;
    sc_signal< sc_logic > packet_filtering_U0_ap_start;
    sc_signal< sc_logic > packet_filtering_U0_ap_done;
    sc_signal< sc_logic > packet_filtering_U0_ap_continue;
    sc_signal< sc_logic > packet_filtering_U0_ap_idle;
    sc_signal< sc_logic > packet_filtering_U0_ap_ready;
    sc_signal< sc_logic > packet_filtering_U0_from_eth_V_read;
    sc_signal< sc_lv<73> > packet_filtering_U0_to_shell_V_din;
    sc_signal< sc_logic > packet_filtering_U0_to_shell_V_write;
    sc_signal< sc_lv<73> > packet_filtering_U0_to_pr_V_din;
    sc_signal< sc_logic > packet_filtering_U0_to_pr_V_write;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > packet_filtering_U0_start_full_n;
    sc_signal< sc_logic > packet_filtering_U0_start_write;
    static const sc_lv<73> ap_const_lv73_0;
    static const sc_logic ap_const_logic_0;
    static const sc_logic ap_const_logic_1;
    // Thread declarations
    void thread_ap_sync_continue();
    void thread_from_eth_V_read();
    void thread_packet_filtering_U0_ap_continue();
    void thread_packet_filtering_U0_ap_start();
    void thread_packet_filtering_U0_start_full_n();
    void thread_packet_filtering_U0_start_write();
    void thread_to_pr_V_din();
    void thread_to_pr_V_write();
    void thread_to_shell_V_din();
    void thread_to_shell_V_write();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
