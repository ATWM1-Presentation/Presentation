# ATWM1 MRI Experiment
                         
scenario = "ATWM1_Working_Memory_MRI_nonsalient_uncued_run1";
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
    6    11   292   292   399   125  9543  2992 12342      fixation_cross    gabor_147 gabor_096 gabor_033 gabor_164    gabor_147_alt gabor_096_alt gabor_033 gabor_164      "1_1_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_147_096_033_164_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_078_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_078_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   19    24   292   292   399   125  9543  2992 12342      fixation_cross    gabor_113 gabor_001 gabor_129 gabor_067    gabor_113_alt gabor_001 gabor_129 gabor_067_alt      "1_2_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_113_001_129_067_target_position_2_3_retrieval_position_2"      gabor_circ gabor_001_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_001_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   32    37   292   292   399   125  9543  2992 14342      fixation_cross    gabor_072 gabor_155 gabor_097 gabor_126    gabor_072 gabor_155 gabor_097_alt gabor_126_alt      "1_3_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_072_155_097_126_target_position_1_2_retrieval_position_2"      gabor_circ gabor_155_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_155_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   46    51   292   292   399   125  9543  2992 14342      fixation_cross    gabor_007 gabor_179 gabor_131 gabor_160    gabor_007 gabor_179_alt gabor_131_alt gabor_160      "1_4_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_007_179_131_160_target_position_1_4_retrieval_position_1"      gabor_007_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_007_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   60    66   292   292   399   125 11543  2992 14342      fixation_cross    gabor_177 gabor_061 gabor_149 gabor_006    gabor_177 gabor_061_alt gabor_149_alt gabor_006      "1_5_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_177_061_149_006_target_position_1_4_retrieval_position_1"     gabor_128_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_128_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   75    81   292   292   399   125 11543  2992 12342      fixation_cross    gabor_029 gabor_067 gabor_002 gabor_044    gabor_029_alt gabor_067 gabor_002 gabor_044_alt      "1_6_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_029_067_002_044_target_position_2_3_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_044_framed    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_044_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   89    94   292   292   399   125  9543  2992 14342      fixation_cross    gabor_017 gabor_076 gabor_036 gabor_146    gabor_017 gabor_076_alt gabor_036_alt gabor_146      "1_7_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_017_076_036_146_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_100_framed    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_100_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  103   108   292   292   399   125  9543  2992 12342      fixation_cross    gabor_015 gabor_098 gabor_151 gabor_041    gabor_015 gabor_098_alt gabor_151_alt gabor_041      "1_8_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_015_098_151_041_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_041_framed    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_041_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  116   121   292   292   399   125  9543  2992 12342      fixation_cross    gabor_139 gabor_025 gabor_004 gabor_065    gabor_139 gabor_025 gabor_004_alt gabor_065_alt      "1_9_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_139_025_004_065_target_position_1_2_retrieval_position_1"      gabor_139_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_139_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  129   135   292   292   399   125 11543  2992 14342      fixation_cross    gabor_087 gabor_032 gabor_002 gabor_153    gabor_087_alt gabor_032 gabor_002 gabor_153_alt     "1_10_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_087_032_002_153_target_position_2_3_retrieval_position_2"     gabor_circ gabor_032_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_032_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  144   149   292   292   399   125  9543  2992 12342      fixation_cross    gabor_075 gabor_009 gabor_155 gabor_042    gabor_075 gabor_009 gabor_155_alt gabor_042_alt     "1_11_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_075_009_155_042_target_position_1_2_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_042_framed    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_042_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  157   163   292   292   399   125 11543  2992 14342      fixation_cross    gabor_098 gabor_009 gabor_051 gabor_165    gabor_098 gabor_009_alt gabor_051_alt gabor_165     "1_12_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_098_009_051_165_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_117_framed    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_117_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  172   178   292   292   399   125 11543  2992 12342      fixation_cross    gabor_018 gabor_068 gabor_048 gabor_108    gabor_018 gabor_068_alt gabor_048_alt gabor_108     "1_13_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_018_068_048_108_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_156_framed    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_156_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  186   192   292   292   399   125 11543  2992 14342      fixation_cross    gabor_180 gabor_160 gabor_028 gabor_100    gabor_180_alt gabor_160 gabor_028 gabor_100_alt     "1_14_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_180_160_028_100_target_position_2_3_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_054_framed    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_054_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_060 gabor_120 gabor_031 gabor_139    gabor_060_alt gabor_120_alt gabor_031 gabor_139     "1_15_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_060_120_031_139_target_position_3_4_retrieval_position_3"     gabor_circ gabor_circ gabor_170_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_170_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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