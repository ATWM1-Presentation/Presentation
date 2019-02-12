# ATWM1 MRI Experiment
                         
scenario = "ATWM1_Working_Memory_MRI_salient_cued_run1";
scenario_type = fMRI; # Fuer Scanner
#scenario_type = fMRI_emulation; # Zum Testen
#scenario_type = trials;
scan_period = 2000; # TR
pulses_per_scan = 1;
pulse_code = 1;
#pulse_width=6;

default_monitor_sounds = false;

active_buttons = 2;
response_matching = simple_matching;
button_codes = 10, 20;
default_font_size = 28;     
default_font  = "Arial"; 
default_background_color = 0 ,0 ,0 ;
#write_codes=true; # for MEG only

begin;	

#Picture definitions   
box { height = 300; width = 300; color = 0, 0, 0;} frame1;
box { height = 290; width = 290; color = 255, 255, 255;} frame2;    
box { height = 30; width = 4; color = 0, 0, 0;} fix1;    
box { height = 4; width = 30; color = 0, 0, 0;} fix2;
box { height = 30; width = 4; color = 255, 0, 0;} fix3;    
box { height = 4; width = 30; color = 255, 0, 0;} fix4;  
box { height = 290; width = 290; color = 128, 128, 128;} background;

TEMPLATE "StimuliDeclaration.tem" {};

trial {
    sound sound_incorrect;
    time = 0;    
    duration = 1;  
} wrong;

trial {
    sound sound_correct;
    time = 0;
    duration = 1;  
} right;

trial {
    sound sound_no_response;
    time = 0;
    duration = 1;
} miss;



# baselinePre (at the beginning of the session)
trial { 
   picture {
      box frame1; x=0; y=0;
      box frame2; x=0; y=0;
		box background; x=0; y=0;
      bitmap fixation_cross_black; x=0; y=0;
   }default;	
   time = 0;  	
   duration = 9400;
   mri_pulse = 1;
   code = "BaselinePre"; 	 
   #port_code = 1;  
};
       
               
TEMPLATE "ATWM1_Working_Memory_MRI.tem" {
trigger_volume_encoding trigger_volume_retrieval cue_time preparation_time encoding_time single_stimulus_presentation_time delay_time retrieval_time intertrial_interval alerting_cross   stim_enc1 stim_enc2 stim_enc3 stim_enc4 	stim_enc_alt1 stim_enc_alt2 stim_enc_alt3 stim_enc_alt4    trial_code   stim_retr1 stim_retr2 stim_retr3 stim_retr4   stim_cue1 stim_cue2 stim_cue3 stim_cue4 fixationcross_cued     retr_code    the_target_button   posX1 posY1 posX2 posY2 posX3 posY3 posX4 posY4;
    6    12   292   292   399   125 11543  2992 14342      fixation_cross    gabor_074 gabor_039 gabor_146 gabor_179    gabor_074 gabor_039 gabor_146_alt gabor_179_alt      "1_1_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_074_039_146_179_target_position_3_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_129_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_1_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_129_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   21    27   292   292   399   125 11543  2992 12342      fixation_cross    gabor_001 gabor_059 gabor_141 gabor_031    gabor_001 gabor_059_alt gabor_141_alt gabor_031      "1_2_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_001_059_141_031_target_position_2_3_retrieval_position_2"        gabor_circ gabor_108_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_2_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_108_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   35    41   292   292   399   125 11543  2992 12342      fixation_cross    gabor_078 gabor_028 gabor_103 gabor_053    gabor_078 gabor_028_alt gabor_103 gabor_053_alt      "1_3_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_078_028_103_053_target_position_2_4_retrieval_position_2"        gabor_circ gabor_028_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_3_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_028_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   49    54   292   292   399   125  9543  2992 12342      fixation_cross    gabor_133 gabor_150 gabor_015 gabor_086    gabor_133_alt gabor_150_alt gabor_015 gabor_086      "1_4_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_133_150_015_086_target_position_1_2_retrieval_position_2"         gabor_circ gabor_104_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_4_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_104_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   62    67   292   292   399   125  9543  2992 14342      fixation_cross    gabor_149 gabor_070 gabor_090 gabor_007    gabor_149_alt gabor_070 gabor_090_alt gabor_007      "1_5_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_149_070_090_007_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_041_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_5_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_041_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   76    81   292   292   399   125  9543  2992 14342      fixation_cross    gabor_063 gabor_005 gabor_123 gabor_094    gabor_063 gabor_005_alt gabor_123 gabor_094_alt      "1_6_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_063_005_123_094_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_094_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_6_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_094_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   90    96   292   292   399   125 11543  2992 14342      fixation_cross    gabor_117 gabor_062 gabor_084 gabor_144    gabor_117_alt gabor_062 gabor_084 gabor_144_alt      "1_7_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_117_062_084_144_target_position_1_4_retrieval_position_3"        gabor_circ gabor_circ gabor_084_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_7_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_084_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  105   111   292   292   399   125 11543  2992 14342      fixation_cross    gabor_010 gabor_116 gabor_096 gabor_174    gabor_010_alt gabor_116_alt gabor_096 gabor_174      "1_8_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_010_116_096_174_target_position_1_2_retrieval_position_2"        gabor_circ gabor_067_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_8_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_067_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  120   125   292   292   399   125  9543  2992 12342      fixation_cross    gabor_082 gabor_168 gabor_148 gabor_023    gabor_082 gabor_168_alt gabor_148_alt gabor_023      "1_9_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_082_168_148_023_target_position_2_3_retrieval_position_3"         gabor_circ gabor_circ gabor_148_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_9_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_148_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  133   138   292   292   399   125  9543  2992 14342      fixation_cross    gabor_093 gabor_121 gabor_011 gabor_035    gabor_093_alt gabor_121_alt gabor_011 gabor_035     "1_10_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_093_121_011_035_target_position_1_2_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_173_framed    blank blank blank blank    fixation_cross_target_position_1_2    "1_10_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_173_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  147   152   292   292   399   125  9543  2992 14342      fixation_cross    gabor_166 gabor_002 gabor_107 gabor_128    gabor_166_alt gabor_002_alt gabor_107 gabor_128     "1_11_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_166_002_107_128_target_position_1_2_retrieval_position_2"         gabor_circ gabor_048_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_11_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_048_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  161   167   292   292   399   125 11543  2992 12342      fixation_cross    gabor_012 gabor_035 gabor_095 gabor_179    gabor_012_alt gabor_035 gabor_095 gabor_179_alt     "1_12_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_012_035_095_179_target_position_1_4_retrieval_position_1"        gabor_012_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_12_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_012_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  175   180   292   292   399   125  9543  2992 12342      fixation_cross    gabor_163 gabor_145 gabor_008 gabor_078    gabor_163_alt gabor_145 gabor_008 gabor_078_alt     "1_13_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_163_145_008_078_target_position_1_4_retrieval_position_2"         gabor_circ gabor_145_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_13_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_145_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   193   292   292   399   125  9543  2992 12342      fixation_cross    gabor_092 gabor_018 gabor_063 gabor_124    gabor_092 gabor_018_alt gabor_063 gabor_124_alt     "1_14_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_092_018_063_124_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_124_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_14_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_124_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_133 gabor_051 gabor_025 gabor_097    gabor_133_alt gabor_051 gabor_025_alt gabor_097     "1_15_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_133_051_025_097_target_position_1_3_retrieval_position_1"        gabor_133_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_15_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_133_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

};

# baselinePost (at the end of the session)
trial {   
   picture {
      box frame1; x=0; y=0;
      box frame2; x=0; y=0;
		box background; x=0; y=0;
      bitmap fixation_cross_black; x=0; y=0;
      };	
   time = 0;  	
   duration = 20600;  
   code = "BaselinePost"; 	 
   #port_code = 2;  
};  