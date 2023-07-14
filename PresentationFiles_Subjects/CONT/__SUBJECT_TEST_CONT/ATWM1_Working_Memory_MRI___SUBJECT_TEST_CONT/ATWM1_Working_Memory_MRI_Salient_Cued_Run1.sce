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
    6    11   292   292   399   125  9543  2992 12342      fixation_cross    gabor_004 gabor_131 gabor_179 gabor_116    gabor_004_alt gabor_131 gabor_179 gabor_116_alt      "1_1_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_004_131_179_116_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_116_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_1_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_116_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   19    24   292   292   399   125  9543  2992 12342      fixation_cross    gabor_067 gabor_087 gabor_173 gabor_005    gabor_067_alt gabor_087 gabor_173 gabor_005_alt      "1_2_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_067_087_173_005_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_005_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_2_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_005_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   32    38   292   292   399   125 11543  2992 12342      fixation_cross    gabor_026 gabor_007 gabor_095 gabor_068    gabor_026_alt gabor_007 gabor_095 gabor_068_alt      "1_3_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_026_007_095_068_target_position_1_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_113_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_3_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_113_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   46    52   292   292   399   125 11543  2992 14342      fixation_cross    gabor_070 gabor_177 gabor_025 gabor_111    gabor_070 gabor_177_alt gabor_025 gabor_111_alt      "1_4_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_070_177_025_111_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_158_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_4_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_158_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   61    67   292   292   399   125 11543  2992 14342      fixation_cross    gabor_084 gabor_031 gabor_015 gabor_105    gabor_084 gabor_031 gabor_015_alt gabor_105_alt      "1_5_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_084_031_015_105_target_position_3_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_105_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_5_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_105_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   76    81   292   292   399   125  9543  2992 12342      fixation_cross    gabor_126 gabor_098 gabor_071 gabor_056    gabor_126_alt gabor_098 gabor_071 gabor_056_alt      "1_6_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_126_098_071_056_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_056_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_6_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_056_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   89    94   292   292   399   125  9543  2992 14342      fixation_cross    gabor_094 gabor_174 gabor_116 gabor_135    gabor_094 gabor_174_alt gabor_116 gabor_135_alt      "1_7_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_094_174_116_135_target_position_2_4_retrieval_position_1"         gabor_049_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_7_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_049_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  103   109   292   292   399   125 11543  2992 14342      fixation_cross    gabor_158 gabor_098 gabor_179 gabor_034    gabor_158_alt gabor_098_alt gabor_179 gabor_034      "1_8_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_158_098_179_034_target_position_1_2_retrieval_position_1"        gabor_018_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_8_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_018_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  118   124   292   292   399   125 11543  2992 14342      fixation_cross    gabor_024 gabor_075 gabor_049 gabor_094    gabor_024 gabor_075_alt gabor_049_alt gabor_094      "1_9_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_024_075_049_094_target_position_2_3_retrieval_position_3"        gabor_circ gabor_circ gabor_004_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_9_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_004_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  133   138   292   292   399   125  9543  2992 12342      fixation_cross    gabor_068 gabor_025 gabor_042 gabor_176    gabor_068 gabor_025 gabor_042_alt gabor_176_alt     "1_10_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_068_025_042_176_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_042_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_10_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_042_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  146   151   292   292   399   125  9543  2992 14342      fixation_cross    gabor_064 gabor_002 gabor_084 gabor_129    gabor_064 gabor_002_alt gabor_084_alt gabor_129     "1_11_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_064_002_084_129_target_position_2_3_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_129_framed    blank blank blank blank    fixation_cross_target_position_2_3    "1_11_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_129_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  160   166   292   292   399   125 11543  2992 12342      fixation_cross    gabor_073 gabor_179 gabor_107 gabor_155    gabor_073 gabor_179_alt gabor_107_alt gabor_155     "1_12_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_073_179_107_155_target_position_2_3_retrieval_position_2"        gabor_circ gabor_044_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_12_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_044_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  174   179   292   292   399   125  9543  2992 14342      fixation_cross    gabor_130 gabor_040 gabor_087 gabor_069    gabor_130_alt gabor_040 gabor_087 gabor_069_alt     "1_13_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_130_040_087_069_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_069_framed    blank blank blank blank    fixation_cross_target_position_1_4    "1_13_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_069_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   194   292   292   399   125 11543  2992 12342      fixation_cross    gabor_060 gabor_027 gabor_008 gabor_132    gabor_060 gabor_027_alt gabor_008_alt gabor_132     "1_14_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_060_027_008_132_target_position_2_3_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_132_framed    blank blank blank blank    fixation_cross_target_position_2_3    "1_14_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_132_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_012 gabor_169 gabor_036 gabor_080    gabor_012 gabor_169_alt gabor_036 gabor_080_alt     "1_15_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_012_169_036_080_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_126_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_15_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_126_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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