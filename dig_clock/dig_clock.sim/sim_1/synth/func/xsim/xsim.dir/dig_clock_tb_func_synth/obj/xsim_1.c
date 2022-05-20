/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_739(char*, char *);
extern void execute_740(char*, char *);
extern void execute_741(char*, char *);
extern void execute_1477(char*, char *);
extern void execute_1478(char*, char *);
extern void execute_1479(char*, char *);
extern void execute_1480(char*, char *);
extern void execute_1481(char*, char *);
extern void execute_1482(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_4(char*, char *);
extern void execute_746(char*, char *);
extern void execute_747(char*, char *);
extern void execute_748(char*, char *);
extern void execute_782(char*, char *);
extern void execute_783(char*, char *);
extern void execute_30(char*, char *);
extern void execute_31(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_46(char*, char *);
extern void execute_47(char*, char *);
extern void execute_1242(char*, char *);
extern void execute_1244(char*, char *);
extern void execute_1246(char*, char *);
extern void execute_1248(char*, char *);
extern void execute_1250(char*, char *);
extern void execute_1251(char*, char *);
extern void execute_1253(char*, char *);
extern void execute_1255(char*, char *);
extern void execute_112(char*, char *);
extern void execute_807(char*, char *);
extern void execute_808(char*, char *);
extern void execute_809(char*, char *);
extern void execute_810(char*, char *);
extern void execute_806(char*, char *);
extern void execute_195(char*, char *);
extern void execute_196(char*, char *);
extern void execute_197(char*, char *);
extern void execute_946(char*, char *);
extern void execute_947(char*, char *);
extern void execute_948(char*, char *);
extern void execute_949(char*, char *);
extern void execute_950(char*, char *);
extern void execute_951(char*, char *);
extern void execute_954(char*, char *);
extern void execute_955(char*, char *);
extern void execute_956(char*, char *);
extern void execute_957(char*, char *);
extern void execute_325(char*, char *);
extern void execute_326(char*, char *);
extern void execute_344(char*, char *);
extern void execute_1111(char*, char *);
extern void execute_1112(char*, char *);
extern void execute_1113(char*, char *);
extern void execute_1114(char*, char *);
extern void execute_1115(char*, char *);
extern void execute_1116(char*, char *);
extern void execute_1117(char*, char *);
extern void execute_1118(char*, char *);
extern void execute_1110(char*, char *);
extern void execute_1371(char*, char *);
extern void execute_1376(char*, char *);
extern void execute_1377(char*, char *);
extern void execute_1383(char*, char *);
extern void execute_1389(char*, char *);
extern void execute_542(char*, char *);
extern void execute_1275(char*, char *);
extern void execute_1276(char*, char *);
extern void execute_1274(char*, char *);
extern void execute_629(char*, char *);
extern void execute_1391(char*, char *);
extern void execute_1392(char*, char *);
extern void execute_1393(char*, char *);
extern void execute_1394(char*, char *);
extern void execute_743(char*, char *);
extern void execute_744(char*, char *);
extern void execute_745(char*, char *);
extern void execute_1483(char*, char *);
extern void execute_1484(char*, char *);
extern void execute_1485(char*, char *);
extern void execute_1486(char*, char *);
extern void execute_1487(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_144(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_145(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_146(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_147(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_148(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_149(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_150(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_151(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_152(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_153(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_154(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_155(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_156(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_157(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_158(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_159(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_162(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_163(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_164(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_165(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_166(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_167(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_168(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_169(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_171(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_172(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_173(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_174(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_175(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_176(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_177(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_178(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_179(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_180(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_181(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_182(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_183(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_184(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_185(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_186(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_187(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_188(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_189(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_190(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_191(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_192(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_193(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_194(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_195(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_196(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_197(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_198(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_199(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_200(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_201(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_202(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_203(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_204(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_205(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_206(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_207(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_208(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_209(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_210(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_211(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_212(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_213(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_214(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_215(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_216(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_217(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_218(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_219(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_220(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_221(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_256(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_257(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_920(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_921(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_922(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_923(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_924(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_925(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_926(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_927(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_928(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_929(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_930(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_931(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_932(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_933(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_934(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_935(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_936(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_435(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_448(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_452(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_456(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_469(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_473(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_477(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_481(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_494(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_498(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_502(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_506(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_510(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_523(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_527(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_531(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_535(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_547(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_551(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_555(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_559(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_572(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_576(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_580(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_584(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_597(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_607(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_611(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_620(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_709(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_713(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_717(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_721(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_725(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_729(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_733(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_737(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_886(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_890(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_894(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_898(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_902(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_906(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_910(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_914(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_992(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_996(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1000(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1004(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1015(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1019(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1023(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1035(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1039(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1043(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1047(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1058(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1062(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1066(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1070(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1081(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1128(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1132(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1136(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1140(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1152(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1156(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1180(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1184(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1188(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1192(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[248] = {(funcp)execute_739, (funcp)execute_740, (funcp)execute_741, (funcp)execute_1477, (funcp)execute_1478, (funcp)execute_1479, (funcp)execute_1480, (funcp)execute_1481, (funcp)execute_1482, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_4, (funcp)execute_746, (funcp)execute_747, (funcp)execute_748, (funcp)execute_782, (funcp)execute_783, (funcp)execute_30, (funcp)execute_31, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_46, (funcp)execute_47, (funcp)execute_1242, (funcp)execute_1244, (funcp)execute_1246, (funcp)execute_1248, (funcp)execute_1250, (funcp)execute_1251, (funcp)execute_1253, (funcp)execute_1255, (funcp)execute_112, (funcp)execute_807, (funcp)execute_808, (funcp)execute_809, (funcp)execute_810, (funcp)execute_806, (funcp)execute_195, (funcp)execute_196, (funcp)execute_197, (funcp)execute_946, (funcp)execute_947, (funcp)execute_948, (funcp)execute_949, (funcp)execute_950, (funcp)execute_951, (funcp)execute_954, (funcp)execute_955, (funcp)execute_956, (funcp)execute_957, (funcp)execute_325, (funcp)execute_326, (funcp)execute_344, (funcp)execute_1111, (funcp)execute_1112, (funcp)execute_1113, (funcp)execute_1114, (funcp)execute_1115, (funcp)execute_1116, (funcp)execute_1117, (funcp)execute_1118, (funcp)execute_1110, (funcp)execute_1371, (funcp)execute_1376, (funcp)execute_1377, (funcp)execute_1383, (funcp)execute_1389, (funcp)execute_542, (funcp)execute_1275, (funcp)execute_1276, (funcp)execute_1274, (funcp)execute_629, (funcp)execute_1391, (funcp)execute_1392, (funcp)execute_1393, (funcp)execute_1394, (funcp)execute_743, (funcp)execute_744, (funcp)execute_745, (funcp)execute_1483, (funcp)execute_1484, (funcp)execute_1485, (funcp)execute_1486, (funcp)execute_1487, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_144, (funcp)transaction_145, (funcp)transaction_146, (funcp)transaction_147, (funcp)transaction_148, (funcp)transaction_149, (funcp)transaction_150, (funcp)transaction_151, (funcp)transaction_152, (funcp)transaction_153, (funcp)transaction_154, (funcp)transaction_155, (funcp)transaction_156, (funcp)transaction_157, (funcp)transaction_158, (funcp)transaction_159, (funcp)transaction_162, (funcp)transaction_163, (funcp)transaction_164, (funcp)transaction_165, (funcp)transaction_166, (funcp)transaction_167, (funcp)transaction_168, (funcp)transaction_169, (funcp)transaction_171, (funcp)transaction_172, (funcp)transaction_173, (funcp)transaction_174, (funcp)transaction_175, (funcp)transaction_176, (funcp)transaction_177, (funcp)transaction_178, (funcp)transaction_179, (funcp)transaction_180, (funcp)transaction_181, (funcp)transaction_182, (funcp)transaction_183, (funcp)transaction_184, (funcp)transaction_185, (funcp)transaction_186, (funcp)transaction_187, (funcp)transaction_188, (funcp)transaction_189, (funcp)transaction_190, (funcp)transaction_191, (funcp)transaction_192, (funcp)transaction_193, (funcp)transaction_194, (funcp)transaction_195, (funcp)transaction_196, (funcp)transaction_197, (funcp)transaction_198, (funcp)transaction_199, (funcp)transaction_200, (funcp)transaction_201, (funcp)transaction_202, (funcp)transaction_203, (funcp)transaction_204, (funcp)transaction_205, (funcp)transaction_206, (funcp)transaction_207, (funcp)transaction_208, (funcp)transaction_209, (funcp)transaction_210, (funcp)transaction_211, (funcp)transaction_212, (funcp)transaction_213, (funcp)transaction_214, (funcp)transaction_215, (funcp)transaction_216, (funcp)transaction_217, (funcp)transaction_218, (funcp)transaction_219, (funcp)transaction_220, (funcp)transaction_221, (funcp)transaction_256, (funcp)transaction_257, (funcp)transaction_920, (funcp)transaction_921, (funcp)transaction_922, (funcp)transaction_923, (funcp)transaction_924, (funcp)transaction_925, (funcp)transaction_926, (funcp)transaction_927, (funcp)transaction_928, (funcp)transaction_929, (funcp)transaction_930, (funcp)transaction_931, (funcp)transaction_932, (funcp)transaction_933, (funcp)transaction_934, (funcp)transaction_935, (funcp)transaction_936, (funcp)transaction_435, (funcp)transaction_448, (funcp)transaction_452, (funcp)transaction_456, (funcp)transaction_469, (funcp)transaction_473, (funcp)transaction_477, (funcp)transaction_481, (funcp)transaction_494, (funcp)transaction_498, (funcp)transaction_502, (funcp)transaction_506, (funcp)transaction_510, (funcp)transaction_523, (funcp)transaction_527, (funcp)transaction_531, (funcp)transaction_535, (funcp)transaction_547, (funcp)transaction_551, (funcp)transaction_555, (funcp)transaction_559, (funcp)transaction_572, (funcp)transaction_576, (funcp)transaction_580, (funcp)transaction_584, (funcp)transaction_597, (funcp)transaction_607, (funcp)transaction_611, (funcp)transaction_620, (funcp)transaction_709, (funcp)transaction_713, (funcp)transaction_717, (funcp)transaction_721, (funcp)transaction_725, (funcp)transaction_729, (funcp)transaction_733, (funcp)transaction_737, (funcp)transaction_886, (funcp)transaction_890, (funcp)transaction_894, (funcp)transaction_898, (funcp)transaction_902, (funcp)transaction_906, (funcp)transaction_910, (funcp)transaction_914, (funcp)transaction_992, (funcp)transaction_996, (funcp)transaction_1000, (funcp)transaction_1004, (funcp)transaction_1015, (funcp)transaction_1019, (funcp)transaction_1023, (funcp)transaction_1035, (funcp)transaction_1039, (funcp)transaction_1043, (funcp)transaction_1047, (funcp)transaction_1058, (funcp)transaction_1062, (funcp)transaction_1066, (funcp)transaction_1070, (funcp)transaction_1081, (funcp)transaction_1128, (funcp)transaction_1132, (funcp)transaction_1136, (funcp)transaction_1140, (funcp)transaction_1152, (funcp)transaction_1156, (funcp)transaction_1180, (funcp)transaction_1184, (funcp)transaction_1188, (funcp)transaction_1192};
const int NumRelocateId= 248;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/dig_clock_tb_func_synth/xsim.reloc",  (void **)funcTab, 248);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/dig_clock_tb_func_synth/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/dig_clock_tb_func_synth/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/dig_clock_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/dig_clock_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/dig_clock_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
