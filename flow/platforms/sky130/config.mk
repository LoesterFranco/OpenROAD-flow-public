# Process node
export PROCESS = 130

# Set the TIEHI/TIELO cells
# These are used in yosys synthesis to avoid logical 1/0's in the netlist
export TIEHI_CELL_AND_PORT = sky130_fd_sc_hs__conb_1 HI
export TIELO_CELL_AND_PORT = sky130_fd_sc_hs__conb_1 LO

# Used in synthesis
export MIN_BUF_CELL_AND_PORTS = sky130_fd_sc_hs__buf_1 A X

# Used in synthesis
export MAX_FANOUT = 5

# Blackbox verilog file
# List all standard cells and cells yosys should treat as blackboxes here
export BLACKBOX_V_FILE = ./platforms/$(PLATFORM)/sky130_fd_sc_hs.blackbox.v

# Yosys mapping files
export LATCH_MAP_FILE = ./platforms/$(PLATFORM)/cells_latch.v
export CLKGATE_MAP_FILE = ./platforms/$(PLATFORM)/cells_clkgate.v
export BLACKBOX_MAP_TCL = ./platforms/$(PLATFORM)/blackbox_map.tcl

# Placement site for core cells
# This can be found in the technology lef
export PLACE_SITE = unit

# Track information for generating DEF tracks
export TRACKS_INFO_FILE = ./platforms/$(PLATFORM)/tracks.info

export IP_GLOBAL_CFG = ./platforms/$(PLATFORM)/IP_global.cfg

export TECH_LEF = ./platforms/$(PLATFORM)/lef/sky130_fd_sc_hs.tlef
export SC_LEF = ./platforms/$(PLATFORM)/lef/merged.lef

export LIB_FILES = ./platforms/$(PLATFORM)/lib/sky130_fd_sc_hs__tt_025C_1v80.lib
                     $(ADDITIONAL_LIBS)
export GDS_FILES = $(wildcard ./platforms/$(PLATFORM)/gds/*.gds) \
                     $(ADDITIONAL_GDS_FILES)

# Cell padding in SITE widths to ease rout-ability
export CELL_PAD_IN_SITES = 4

# Endcap and Welltie cells
export TAPCELL_TCL = ./platforms/$(PLATFORM)/tapcell.tcl

# TritonCTS options
export CTS_BUF_CELL   = sky130_fd_sc_hs__buf_1
export CTS_TECH_DIR   = ./platforms/$(PLATFORM)/tritonCTS

# FastRoute options
export MAX_ROUTING_LAYER = 6

# IO Pin fix margin
export IO_PIN_MARGIN = 70

# Layer to use for parasitics estimations
export WIRE_RC_LAYER = met3

# Resizer options
export RESIZER_BUF_CELL = sky130_fd_sc_hs__buf_1

# KLayout technology file
export KLAYOUT_TECH_FILE = ./platforms/$(PLATFORM)/$(PLATFORM).lyt

# Dont use cells to ease congestion
# Specify at least one filler cell if none

export DONT_USE_CELLS += sky130_fd_sc_hs__dfstp_2 sky130_fd_sc_hs__xor3_4 sky130_fd_sc_hs__or2b_2 \
sky130_fd_sc_hs__xnor3_2 sky130_fd_sc_hs__sdfbbn_2 sky130_fd_sc_hs__sdfxtp_2 sky130_fd_sc_hs__dfxtp_2 \
sky130_fd_sc_hs__xor2_2 sky130_fd_sc_hs__o311ai_2 sky130_fd_sc_hs__nand2_2 sky130_fd_sc_hs__sdfrtp_2 \
sky130_fd_sc_hs__and4_2 sky130_fd_sc_hs__dfsbp_2 sky130_fd_sc_hs__or4_2 sky130_fd_sc_hs__inv_2 \
sky130_fd_sc_hs__dlymetal6s4s_1 sky130_fd_sc_hs__o31ai_2 sky130_fd_sc_hs__bufbuf_16 \
sky130_fd_sc_hs__dlygate4sd3_1 sky130_fd_sc_hs__o22ai_2 sky130_fd_sc_hs__o32ai_2 sky130_fd_sc_hs__and3_2 \
sky130_fd_sc_hs__o2111ai_2 sky130_fd_sc_hs__dlrbp_2 sky130_fd_sc_hs__and4bb_2 \
sky130_fd_sc_hs__nand3b_2 sky130_fd_sc_hs__buf_6 sky130_fd_sc_hs__and4b_2 \
sky130_fd_sc_hs__a2bb2oi_2 sky130_fd_sc_hs__buf_12 sky130_fd_sc_hs__and2_2 sky130_fd_sc_hs__dlxbn_2 \
sky130_fd_sc_hs__dlrtp_2 sky130_fd_sc_hs__xor3_1 sky130_fd_sc_hs__a21oi_2 sky130_fd_sc_hs__inv_12 \
sky130_fd_sc_hs__o21ai_2 sky130_fd_sc_hs__a311oi_2 sky130_fd_sc_hs__o21bai_2 sky130_fd_sc_hs__nand3_2 \
sky130_fd_sc_hs__dlygate4sd2_1 sky130_fd_sc_hs__o211ai_2 sky130_fd_sc_hs__or4b_2 sky130_fd_sc_hs__and3b_2 \
sky130_fd_sc_hs__or4bb_2 sky130_fd_sc_hs__sdfrbp_2 sky130_fd_sc_hs__o2bb2ai_2 sky130_fd_sc_hs__bufinv_16 \
sky130_fd_sc_hs__xor3_2 sky130_fd_sc_hs__o41ai_2 sky130_fd_sc_hs__or3b_2 sky130_fd_sc_hs__or2_2 \
sky130_fd_sc_hs__dfrtp_2 sky130_fd_sc_hs__bufbuf_8 sky130_fd_sc_hs__bufinv_8 sky130_fd_sc_hs__buf_2 \
sky130_fd_sc_hs__inv_6 sky130_fd_sc_hs__xnor3_4 sky130_fd_sc_hs__and2b_2 sky130_fd_sc_hs__a2111oi_2 \
sky130_fd_sc_hs__xnor3_1 sky130_fd_sc_hs__dlymetal6s6s_1 sky130_fd_sc_hs__o221ai_2 sky130_fd_sc_hs__sdfstp_2 sky130_fd_sc_hs__a31oi_2 sky130_fd_sc_hs__a211oi_2 sky130_fd_sc_hs__nand2b_2 sky130_fd_sc_hs__a22oi_2 sky130_fd_sc_hs__dlymetal6s2s_1 sky130_fd_sc_hs__dlxtn_2 sky130_fd_sc_hs__a21boi_2 sky130_fd_sc_hs__dlrtn_2 sky130_fd_sc_hs__a221oi_2 sky130_fd_sc_hs__or3_2 sky130_fd_sc_hs__sdfsbp_2 sky130_fd_sc_hs__xnor2_2 sky130_fd_sc_hs__sdfxbp_2 sky130_fd_sc_hs__clkbuf_1 sky130_fd_sc_hs__clkbuf_2 sky130_fd_sc_hs__clkbuf_4 sky130_fd_sc_hs__clkbuf_8 sky130_fd_sc_hs__clkbuf_16 sky130_fd_sc_hs__o22a_1 sky130_fd_sc_hs__o22ai_1 sky130_fd_sc_hs__o21a_1 sky130_fd_sc_hs__o21ai_1 sky130_fd_sc_hs__a211o_1 sky130_fd_sc_hs__a211oi_2 sky130_fd_sc_hs__a21oi_2 sky130_fd_sc_hs__a22oi_2 sky130_fd_sc_hs__a311oi_2 sky130_fd_sc_hs__and2_2 sky130_fd_sc_hs__and3_2 sky130_fd_sc_hs__and4_2 sky130_fd_sc_hs__and4bb_2 sky130_fd_sc_hs__buf_6 sky130_fd_sc_hs__bufbuf_8 sky130_fd_sc_hs__bufinv_8 sky130_fd_sc_hs__clkbuf_16 \
sky130_fd_sc_hs__clkbuf_4 sky130_fd_sc_hs__dfrtp_2 sky130_fd_sc_hs__dfstp_2 sky130_fd_sc_hs__dlrbp_2 sky130_fd_sc_hs__dlrtp_2 sky130_fd_sc_hs__dlxtn_2 sky130_fd_sc_hs__dlygate4sd3_1 sky130_fd_sc_hs__dlymetal6s4s_1 sky130_fd_sc_hs__inv_12 sky130_fd_sc_hs__inv_6 sky130_fd_sc_hs__nand2b_2 sky130_fd_sc_hs__nand3b_2 sky130_fd_sc_hs__o211ai_2 sky130_fd_sc_hs__o21ai_1 sky130_fd_sc_hs__o21bai_2 sky130_fd_sc_hs__o22a_1 sky130_fd_sc_hs__o22ai_2 sky130_fd_sc_hs__o311ai_2 sky130_fd_sc_hs__o32ai_2 sky130_fd_sc_hs__or2_2 sky130_fd_sc_hs__or3_2 sky130_fd_sc_hs__or4_2 sky130_fd_sc_hs__or4bb_2 sky130_fd_sc_hs__sdfrbp_2 sky130_fd_sc_hs__sdfsbp_2 sky130_fd_sc_hs__sdfxbp_2 sky130_fd_sc_hs__xnor2_2 sky130_fd_sc_hs__xnor3_2 sky130_fd_sc_hs__xor2_2 sky130_fd_sc_hs__xor3_2 sky130_fd_sc_hs__buf_12 sky130_fd_sc_hs__a2111o_1 sky130_fd_sc_hs__a2111o_2 sky130_fd_sc_hs__a2111oi_0 sky130_fd_sc_hs__a2111oi_1 sky130_fd_sc_hs__a211o_2 sky130_fd_sc_hs__a211oi_1 sky130_fd_sc_hs__a211oi_4 sky130_fd_sc_hs__a21bo_1 \
sky130_fd_sc_hs__a21bo_2 sky130_fd_sc_hs__a21boi_0 sky130_fd_sc_hs__a21boi_1 sky130_fd_sc_hs__a21o_1 sky130_fd_sc_hs__a21o_2 sky130_fd_sc_hs__a21oi_1 sky130_fd_sc_hs__a221o_1 sky130_fd_sc_hs__a221o_2 sky130_fd_sc_hs__a221o_4 sky130_fd_sc_hs__a221oi_1 sky130_fd_sc_hs__a221oi_4 sky130_fd_sc_hs__a222oi_1 sky130_fd_sc_hs__a22o_1 sky130_fd_sc_hs__a22o_2 sky130_fd_sc_hs__a22o_4 sky130_fd_sc_hs__a22oi_1 sky130_fd_sc_hs__a2bb2o_1 sky130_fd_sc_hs__a2bb2o_2 sky130_fd_sc_hs__a2bb2oi_1 sky130_fd_sc_hs__a311o_1 sky130_fd_sc_hs__a311o_2 sky130_fd_sc_hs__a311o_4 sky130_fd_sc_hs__a311oi_1 sky130_fd_sc_hs__a311oi_4 sky130_fd_sc_hs__a31o_1 sky130_fd_sc_hs__a31o_2 sky130_fd_sc_hs__a31o_4 sky130_fd_sc_hs__a31oi_1 sky130_fd_sc_hs__a31oi_4 sky130_fd_sc_hs__a32o_1 sky130_fd_sc_hs__a32o_2 sky130_fd_sc_hs__a32oi_1 sky130_fd_sc_hs__a32oi_2 sky130_fd_sc_hs__a41o_1 sky130_fd_sc_hs__a41o_2 sky130_fd_sc_hs__a41oi_1 sky130_fd_sc_hs__a41oi_2 sky130_fd_sc_hs__and2_0 sky130_fd_sc_hs__and2_1 sky130_fd_sc_hs__and2b_1 sky130_fd_sc_hs__and2b_4 sky130_fd_sc_hs__and3_1 sky130_fd_sc_hs__and3b_1 sky130_fd_sc_hs__and3b_4 \
sky130_fd_sc_hs__and4_1 sky130_fd_sc_hs__and4b_1 sky130_fd_sc_hs__and4b_4 sky130_fd_sc_hs__and4bb_1 sky130_fd_sc_hs__and4bb_4 sky130_fd_sc_hs__clkdlybuf4s15_1 sky130_fd_sc_hs__clkdlybuf4s15_2 sky130_fd_sc_hs__clkdlybuf4s18_1 sky130_fd_sc_hs__clkdlybuf4s18_2 sky130_fd_sc_hs__clkdlybuf4s25_1 sky130_fd_sc_hs__clkdlybuf4s25_2 sky130_fd_sc_hs__clkdlybuf4s50_1 sky130_fd_sc_hs__clkdlybuf4s50_2 sky130_fd_sc_hs__clkinv_1 sky130_fd_sc_hs__clkinv_16 sky130_fd_sc_hs__clkinv_2 sky130_fd_sc_hs__clkinv_4 sky130_fd_sc_hs__clkinv_8 sky130_fd_sc_hs__clkinvlp_2 sky130_fd_sc_hs__clkinvlp_4 sky130_fd_sc_hs__decap_12 sky130_fd_sc_hs__decap_3 sky130_fd_sc_hs__decap_4 sky130_fd_sc_hs__decap_6 sky130_fd_sc_hs__decap_8 sky130_fd_sc_hs__dfbbn_1 sky130_fd_sc_hs__dfbbp_1 sky130_fd_sc_hs__dfrbp_1 sky130_fd_sc_hs__dfrtn_1 sky130_fd_sc_hs__dfrtp_1 sky130_fd_sc_hs__dfsbp_1 sky130_fd_sc_hs__dfstp_1 sky130_fd_sc_hs__dfxbp_1 sky130_fd_sc_hs__dfxtp_1 sky130_fd_sc_hs__diode_2 sky130_fd_sc_hs__dlclkp_1 sky130_fd_sc_hs__dlclkp_2 \
sky130_fd_sc_hs__dlclkp_4 sky130_fd_sc_hs__dlrbn_1 sky130_fd_sc_hs__dlrbn_2 sky130_fd_sc_hs__dlrbp_1 sky130_fd_sc_hs__dlrtn_1 sky130_fd_sc_hs__dlrtn_4 sky130_fd_sc_hs__dlrtp_1 sky130_fd_sc_hs__dlrtp_4 sky130_fd_sc_hs__dlxbn_1 sky130_fd_sc_hs__dlxbp_1 sky130_fd_sc_hs__dlxtn_1 sky130_fd_sc_hs__dlxtn_4 sky130_fd_sc_hs__dlxtp_1 sky130_fd_sc_hs__dlygate4sd1_1 sky130_fd_sc_hs__ebufn_1 sky130_fd_sc_hs__ebufn_2 sky130_fd_sc_hs__ebufn_4 sky130_fd_sc_hs__ebufn_8 sky130_fd_sc_hs__edfxbp_1 sky130_fd_sc_hs__edfxtp_1 sky130_fd_sc_hs__einvn_0 sky130_fd_sc_hs__einvn_1 sky130_fd_sc_hs__einvn_2 sky130_fd_sc_hs__einvn_4 sky130_fd_sc_hs__einvn_8 sky130_fd_sc_hs__einvp_1 sky130_fd_sc_hs__einvp_2 sky130_fd_sc_hs__einvp_4 sky130_fd_sc_hs__einvp_8 sky130_fd_sc_hs__fa_1 sky130_fd_sc_hs__fa_2 sky130_fd_sc_hs__fa_4 sky130_fd_sc_hs__fah_1 sky130_fd_sc_hs__fahcin_1 sky130_fd_sc_hs__fahcon_1 sky130_fd_sc_hs__ha_1 sky130_fd_sc_hs__ha_2 sky130_fd_sc_hs__ha_4 sky130_fd_sc_hs__inv_1 sky130_fd_sc_hs__inv_4 sky130_fd_sc_hs__lpflow_bleeder_1 sky130_fd_sc_hs__lpflow_clkbufkapwr_1 sky130_fd_sc_hs__lpflow_clkbufkapwr_16 sky130_fd_sc_hs__lpflow_clkbufkapwr_2 sky130_fd_sc_hs__lpflow_clkbufkapwr_4 sky130_fd_sc_hs__lpflow_clkbufkapwr_8 sky130_fd_sc_hs__lpflow_clkinvkapwr_1 sky130_fd_sc_hs__lpflow_clkinvkapwr_16 sky130_fd_sc_hs__lpflow_clkinvkapwr_2 sky130_fd_sc_hs__lpflow_clkinvkapwr_4 sky130_fd_sc_hs__lpflow_clkinvkapwr_8 \
sky130_fd_sc_hs__lpflow_decapkapwr_12 sky130_fd_sc_hs__lpflow_decapkapwr_3 sky130_fd_sc_hs__lpflow_decapkapwr_4 sky130_fd_sc_hs__lpflow_decapkapwr_6 sky130_fd_sc_hs__lpflow_decapkapwr_8 sky130_fd_sc_hs__lpflow_inputiso0n_1 sky130_fd_sc_hs__lpflow_inputiso0p_1 sky130_fd_sc_hs__lpflow_inputiso1n_1 sky130_fd_sc_hs__lpflow_inputiso1p_1 sky130_fd_sc_hs__lpflow_inputisolatch_1 sky130_fd_sc_hs__lpflow_isobufsrc_1 sky130_fd_sc_hs__lpflow_isobufsrc_16 sky130_fd_sc_hs__lpflow_isobufsrc_2 \
sky130_fd_sc_hs__lpflow_isobufsrc_4 sky130_fd_sc_hs__lpflow_isobufsrc_8 sky130_fd_sc_hs__lpflow_isobufsrckapwr_16 sky130_fd_sc_hs__lpflow_lsbuf_lh_isowell_4 sky130_fd_sc_hs__lpflow_lsbuf_lh_isowell_tap_1 sky130_fd_sc_hs__lpflow_lsbuf_lh_isowell_tap_2 sky130_fd_sc_hs__lpflow_lsbuf_lh_isowell_tap_4 sky130_fd_sc_hs__macro_sparecell sky130_fd_sc_hs__maj3_1 sky130_fd_sc_hs__maj3_2 sky130_fd_sc_hs__mux2_1 sky130_fd_sc_hs__mux2_2 sky130_fd_sc_hs__mux2_4 sky130_fd_sc_hs__mux2_8 sky130_fd_sc_hs__mux2i_1 \
sky130_fd_sc_hs__mux2i_2 sky130_fd_sc_hs__mux2i_4 sky130_fd_sc_hs__mux4_1 sky130_fd_sc_hs__mux4_2 sky130_fd_sc_hs__nand2_1 sky130_fd_sc_hs__nand2_8 sky130_fd_sc_hs__nand2b_1 sky130_fd_sc_hs__nand2b_4 sky130_fd_sc_hs__nand3_1 sky130_fd_sc_hs__nand3b_1 sky130_fd_sc_hs__nand3b_4 sky130_fd_sc_hs__nand4_1 sky130_fd_sc_hs__nand4_2 sky130_fd_sc_hs__nand4b_1 sky130_fd_sc_hs__nand4b_2 sky130_fd_sc_hs__nand4b_4 sky130_fd_sc_hs__nand4bb_1 sky130_fd_sc_hs__nand4bb_2 sky130_fd_sc_hs__nand4bb_4 sky130_fd_sc_hs__nor2_1 \
sky130_fd_sc_hs__nor2_2 sky130_fd_sc_hs__nor2_8 sky130_fd_sc_hs__nor2b_1 sky130_fd_sc_hs__nor2b_2 sky130_fd_sc_hs__nor2b_4 sky130_fd_sc_hs__nor3_1 sky130_fd_sc_hs__nor3_2 sky130_fd_sc_hs__nor3b_1 sky130_fd_sc_hs__nor3b_2 sky130_fd_sc_hs__nor3b_4 sky130_fd_sc_hs__nor4_1 sky130_fd_sc_hs__nor4_2 sky130_fd_sc_hs__nor4b_1 sky130_fd_sc_hs__nor4b_2 sky130_fd_sc_hs__nor4b_4 sky130_fd_sc_hs__nor4bb_1 sky130_fd_sc_hs__nor4bb_2 sky130_fd_sc_hs__nor4bb_4 sky130_fd_sc_hs__o2111a_1 sky130_fd_sc_hs__o2111a_2 \
sky130_fd_sc_hs__o2111a_4 sky130_fd_sc_hs__o2111ai_1 sky130_fd_sc_hs__o2111ai_4 sky130_fd_sc_hs__o211a_1 sky130_fd_sc_hs__o211a_2 sky130_fd_sc_hs__o211a_4 sky130_fd_sc_hs__o211ai_1 sky130_fd_sc_hs__o211ai_4 sky130_fd_sc_hs__o21a_2 sky130_fd_sc_hs__o21ai_0 sky130_fd_sc_hs__o21ba_1 sky130_fd_sc_hs__o21ba_2 sky130_fd_sc_hs__o21ba_4 sky130_fd_sc_hs__o21bai_1 sky130_fd_sc_hs__o21bai_4 sky130_fd_sc_hs__o221a_1 sky130_fd_sc_hs__o221a_2 sky130_fd_sc_hs__o221a_4 sky130_fd_sc_hs__o221ai_1 sky130_fd_sc_hs__o221ai_4 \
sky130_fd_sc_hs__o22a_2 sky130_fd_sc_hs__o22ai_4 sky130_fd_sc_hs__o2bb2a_1 sky130_fd_sc_hs__o2bb2a_2 sky130_fd_sc_hs__o2bb2a_4 sky130_fd_sc_hs__o2bb2ai_1 sky130_fd_sc_hs__o2bb2ai_4 sky130_fd_sc_hs__o311a_1 sky130_fd_sc_hs__o311a_2 sky130_fd_sc_hs__o311a_4 sky130_fd_sc_hs__o311ai_0 sky130_fd_sc_hs__o311ai_1 sky130_fd_sc_hs__o311ai_4 sky130_fd_sc_hs__o31a_1 sky130_fd_sc_hs__o31a_2 sky130_fd_sc_hs__o31a_4 sky130_fd_sc_hs__o31ai_1 sky130_fd_sc_hs__o31ai_4 sky130_fd_sc_hs__o32a_1 sky130_fd_sc_hs__o32a_2 \
sky130_fd_sc_hs__o32ai_1 sky130_fd_sc_hs__o41a_1 sky130_fd_sc_hs__o41a_2 sky130_fd_sc_hs__o41ai_1 sky130_fd_sc_hs__or2_0 sky130_fd_sc_hs__or2_1 sky130_fd_sc_hs__or2b_1 sky130_fd_sc_hs__or2b_4 sky130_fd_sc_hs__or3_1 sky130_fd_sc_hs__or3b_1 sky130_fd_sc_hs__or3b_4 sky130_fd_sc_hs__or4_1 sky130_fd_sc_hs__or4b_1 sky130_fd_sc_hs__or4b_4 sky130_fd_sc_hs__or4bb_1 sky130_fd_sc_hs__or4bb_4 sky130_fd_sc_hs__probe_s8p_8 sky130_fd_sc_hs__probec_s8p_8 sky130_fd_sc_hs__sdfbbn_1 sky130_fd_sc_hs__sdfbbp_1 \
sky130_fd_sc_hs__sdfrbp_1 sky130_fd_sc_hs__sdfrtn_1 sky130_fd_sc_hs__sdfrtp_1 sky130_fd_sc_hs__sdfrtp_4 sky130_fd_sc_hs__sdfsbp_1 \
sky130_fd_sc_hs__sdfstp_1 sky130_fd_sc_hs__sdfstp_4 sky130_fd_sc_hs__sdfxbp_1 sky130_fd_sc_hs__sdfxtp_1 \
sky130_fd_sc_hs__sdfxtp_4 sky130_fd_sc_hs__sdlclkp_1 sky130_fd_sc_hs__sdlclkp_2 sky130_fd_sc_hs__sdlclkp_4 sky130_fd_sc_hs__sedfxbp_1 \
sky130_fd_sc_hs__sedfxbp_2 sky130_fd_sc_hs__sedfxtp_1 sky130_fd_sc_hs__sedfxtp_2 sky130_fd_sc_hs__sedfxtp_4 sky130_fd_sc_hs__xnor2_1 sky130_fd_sc_hs__xor2_1 sky130_fd_sc_hs__buf_16 sky130_fd_sc_hs__lpflow_lsbuf_lh_hl_isowell_tap_1 sky130_fd_sc_hs__lpflow_lsbuf_lh_hl_isowell_tap_2 sky130_fd_sc_hs__lpflow_lsbuf_lh_hl_isowell_tap_4

# Define ABC driver and load
export ABC_DRIVER_CELL = sky130_fd_sc_hs__buf_1
export ABC_LOAD_IN_FF = 5

# Define default PDN config
export PDN_CFG ?= ./platforms/$(PLATFORM)/pdn.cfg

# Define fastRoute tcl
export FASTROUTE_TCL = ./platforms/$(PLATFORM)/fastroute.tcl

# Template definition for power grid analysis
export TEMPLATE_PGA_CFG ?= ./platforms/sky130/template_pga.cfg

export PLACE_DENSITY ?= 0.30

# Define Hold Buffer
export HOLD_BUF_CELL = sky130_fd_sc_hs__buf_1

# IO Placer pin layers
export IO_PLACER_H = 4
export IO_PLACER_V = 3

# keep with gf
export CELL_PAD_IN_SITES_GLOBAL_PLACEMENT = 4
export CELL_PAD_IN_SITES_DETAIL_PLACEMENT = 2

# Define fill cells
export FILL_CELLS = sky130_fd_sc_hs__fill_1 sky130_fd_sc_hs__fill_2 sky130_fd_sc_hs__fill_4 sky130_fd_sc_hs__fill_8

# resizer repair_long_wires -max_length
export MAX_WIRE_LENGTH = 1000

