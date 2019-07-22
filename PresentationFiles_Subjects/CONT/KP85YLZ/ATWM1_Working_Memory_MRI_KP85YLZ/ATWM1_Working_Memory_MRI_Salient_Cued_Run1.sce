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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_007 gabor_054 gabor_141 gabor_080    gabor_007_alt gabor_054 gabor_141 gabor_080_alt      "1_1_Encoding_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_007_054_141_080_target_position_1_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_034_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_1_Retrieval_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_034_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    25   292   292   399   125  9543  2992 14342      fixation_cross    gabor_013 gabor_164 gabor_055 gabor_031    gabor_013 gabor_164 gabor_055_alt gabor_031_alt      "1_2_Encoding_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_013_164_055_031_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_031_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_2_Retrieval_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_031_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   34    40   292   292   399   125 11543  2992 14342      fixation_cross    gabor_093 gabor_118 gabor_162 gabor_030    gabor_093 gabor_118_alt gabor_162 gabor_030_alt      "1_3_Encoding_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_093_118_162_030_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_030_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_3_Retrieval_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_030_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   49    55   292   292   399   125 11543  2992 14342      fixation_cross    gabor_027 gabor_005 gabor_142 gabor_079    gabor_027_alt gabor_005 gabor_142 gabor_079_alt      "1_4_Encoding_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_027_005_142_079_target_position_1_4_retrieval_position_1"        gabor_027_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_4_Retrieval_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_027_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   64    69   292   292   399   125  9543  2992 14342      fixation_cross    gabor_154 gabor_090 gabor_032 gabor_120    gabor_154_alt gabor_090 gabor_032 gabor_120_alt      "1_5_Encoding_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_154_090_032_120_target_position_1_4_retrieval_position_1"         gabor_014_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_5_Retrieval_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_014_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   78    83   292   292   399   125  9543  2992 14342      fixation_cross    gabor_032 gabor_140 gabor_059 gabor_005    gabor_032_alt gabor_140 gabor_059 gabor_005_alt      "1_6_Encoding_Working_Memory_MRI_P1_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_032_140_059_005_target_position_1_4_retrieval_position_2"         gabor_circ gabor_140_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_6_Retrieval_Working_Memory_MRI_P1_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_140_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   92    98   292   292   399   125 11543  2992 12342      fixation_cross    gabor_167 gabor_128 gabor_010 gabor_099    gabor_167_alt gabor_128_alt gabor_010 gabor_099      "1_7_Encoding_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_167_128_010_099_target_position_1_2_retrieval_position_2"        gabor_circ gabor_080_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_7_Retrieval_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_080_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  106   111   292   292   399   125  9543  2992 12342      fixation_cross    gabor_085 gabor_011 gabor_163 gabor_146    gabor_085_alt gabor_011 gabor_163_alt gabor_146      "1_8_Encoding_Working_Memory_MRI_P1_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_085_011_163_146_target_position_1_3_retrieval_position_2"         gabor_circ gabor_011_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_8_Retrieval_Working_Memory_MRI_P1_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_011_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  119   125   292   292   399   125 11543  2992 14342      fixation_cross    gabor_034 gabor_060 gabor_172 gabor_121    gabor_034_alt gabor_060 gabor_172_alt gabor_121      "1_9_Encoding_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_034_060_172_121_target_position_1_3_retrieval_position_1"        gabor_083_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_9_Retrieval_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_083_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  134   139   292   292   399   125  9543  2992 12342      fixation_cross    gabor_021 gabor_109 gabor_080 gabor_150    gabor_021_alt gabor_109 gabor_080_alt gabor_150     "1_10_Encoding_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_021_109_080_150_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_127_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_10_Retrieval_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_127_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  147   152   292   292   399   125  9543  2992 14342      fixation_cross    gabor_179 gabor_025 gabor_115 gabor_155    gabor_179 gabor_025_alt gabor_115_alt gabor_155     "1_11_Encoding_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_179_025_115_155_target_position_2_3_retrieval_position_2"         gabor_circ gabor_025_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_11_Retrieval_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_025_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  161   166   292   292   399   125  9543  2992 12342      fixation_cross    gabor_038 gabor_083 gabor_016 gabor_067    gabor_038_alt gabor_083 gabor_016_alt gabor_067     "1_12_Encoding_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_038_083_016_067_target_position_1_3_retrieval_position_1"         gabor_038_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_12_Retrieval_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_038_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  174   180   292   292   399   125 11543  2992 12342      fixation_cross    gabor_129 gabor_104 gabor_084 gabor_060    gabor_129 gabor_104_alt gabor_084_alt gabor_060     "1_13_Encoding_Working_Memory_MRI_P1_RL_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_129_104_084_060_target_position_2_3_retrieval_position_1"        gabor_174_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_13_Retrieval_Working_Memory_MRI_P1_RL_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_174_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   193   292   292   399   125  9543  2992 14342      fixation_cross    gabor_135 gabor_089 gabor_026 gabor_113    gabor_135 gabor_089_alt gabor_026 gabor_113_alt     "1_14_Encoding_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_135_089_026_113_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_067_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_14_Retrieval_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_067_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_173 gabor_084 gabor_136 gabor_055    gabor_173 gabor_084_alt gabor_136 gabor_055_alt     "1_15_Encoding_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_173_084_136_055_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_055_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_15_Retrieval_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_055_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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