# ATWM1 MRI Experiment
                         
scenario = "ATWM1_Working_Memory_MRI_nonsalient_cued_run1";
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
    6    11   292   292   399   125  9543  2992 12342      fixation_cross    gabor_100 gabor_025 gabor_043 gabor_079    gabor_100_alt gabor_025 gabor_043_alt gabor_079      "1_1_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_100_025_043_079_target_position_2_4_retrieval_position_2"      gabor_circ gabor_162_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_1_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_162_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   19    24   292   292   399   125  9543  2992 14342      fixation_cross    gabor_175 gabor_068 gabor_104 gabor_051    gabor_175 gabor_068 gabor_104_alt gabor_051_alt      "1_2_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_175_068_104_051_target_position_1_2_retrieval_position_1"      gabor_175_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_2_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_175_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   33    39   292   292   399   125 11543  2992 12342      fixation_cross    gabor_013 gabor_151 gabor_046 gabor_124    gabor_013_alt gabor_151_alt gabor_046 gabor_124      "1_3_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_013_151_046_124_target_position_3_4_retrieval_position_3"     gabor_circ gabor_circ gabor_046_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_3_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_046_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   47    53   292   292   399   125 11543  2992 14342      fixation_cross    gabor_109 gabor_072 gabor_160 gabor_137    gabor_109_alt gabor_072 gabor_160 gabor_137_alt      "1_4_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_109_072_160_137_target_position_2_3_retrieval_position_2"     gabor_circ gabor_022_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_4_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_022_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   62    68   292   292   399   125 11543  2992 12342      fixation_cross    gabor_012 gabor_031 gabor_058 gabor_144    gabor_012_alt gabor_031 gabor_058_alt gabor_144      "1_5_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_012_031_058_144_target_position_2_4_retrieval_position_2"     gabor_circ gabor_031_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_5_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_031_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   76    82   292   292   399   125 11543  2992 12342      fixation_cross    gabor_025 gabor_005 gabor_076 gabor_140    gabor_025_alt gabor_005 gabor_076 gabor_140_alt      "1_6_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_025_005_076_140_target_position_2_3_retrieval_position_2"     gabor_circ gabor_005_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_6_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_005_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   90    95   292   292   399   125  9543  2992 12342      fixation_cross    gabor_170 gabor_044 gabor_017 gabor_001    gabor_170 gabor_044_alt gabor_017_alt gabor_001      "1_7_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_170_044_017_001_target_position_1_4_retrieval_position_2"      gabor_circ gabor_044_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_7_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_044_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  103   108   292   292   399   125  9543  2992 12342      fixation_cross    gabor_061 gabor_034 gabor_016 gabor_173    gabor_061 gabor_034 gabor_016_alt gabor_173_alt      "1_8_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_061_034_016_173_target_position_1_2_retrieval_position_2"      gabor_circ gabor_034_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_8_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_034_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  116   121   292   292   399   125  9543  2992 14342      fixation_cross    gabor_166 gabor_133 gabor_048 gabor_028    gabor_166 gabor_133_alt gabor_048 gabor_028_alt      "1_9_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_166_133_048_028_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_003_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_9_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_003_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  130   136   292   292   399   125 11543  2992 14342      fixation_cross    gabor_047 gabor_115 gabor_160 gabor_177    gabor_047 gabor_115 gabor_160_alt gabor_177_alt     "1_10_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_047_115_160_177_target_position_1_2_retrieval_position_3"     gabor_circ gabor_circ gabor_160_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_10_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_160_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  145   150   292   292   399   125  9543  2992 14342      fixation_cross    gabor_126 gabor_096 gabor_041 gabor_155    gabor_126 gabor_096 gabor_041_alt gabor_155_alt     "1_11_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_126_096_041_155_target_position_1_2_retrieval_position_1"      gabor_175_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_11_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_175_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  159   165   292   292   399   125 11543  2992 12342      fixation_cross    gabor_134 gabor_153 gabor_074 gabor_048    gabor_134 gabor_153_alt gabor_074_alt gabor_048     "1_12_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_134_153_074_048_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_048_framed    blank blank blank blank    fixation_cross_target_position_1_4    "1_12_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_048_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  173   179   292   292   399   125 11543  2992 14342      fixation_cross    gabor_078 gabor_004 gabor_048 gabor_025    gabor_078_alt gabor_004 gabor_048 gabor_025_alt     "1_13_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_078_004_048_025_target_position_2_3_retrieval_position_3"     gabor_circ gabor_circ gabor_094_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_13_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_094_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  188   193   292   292   399   125  9543  2992 14342      fixation_cross    gabor_136 gabor_081 gabor_014 gabor_166    gabor_136 gabor_081_alt gabor_014 gabor_166_alt     "1_14_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_136_081_014_166_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_060_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_14_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_060_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_088 gabor_029 gabor_066 gabor_047    gabor_088 gabor_029 gabor_066_alt gabor_047_alt     "1_15_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_088_029_066_047_target_position_1_2_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_001_framed    blank blank blank blank    fixation_cross_target_position_1_2    "1_15_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_001_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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