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
    6    11   292   292   399   125  9543  2992 12342      fixation_cross    gabor_052 gabor_092 gabor_019 gabor_131    gabor_052 gabor_092_alt gabor_019_alt gabor_131      "1_1_Encoding_Working_Memory_MRI_P4_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_052_092_019_131_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_176_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_1_Retrieval_Working_Memory_MRI_P4_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_176_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   19    24   292   292   399   125  9543  2992 14342      fixation_cross    gabor_166 gabor_127 gabor_109 gabor_037    gabor_166_alt gabor_127 gabor_109 gabor_037_alt      "1_2_Encoding_Working_Memory_MRI_P4_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_166_127_109_037_target_position_2_3_retrieval_position_3"      gabor_circ gabor_circ gabor_060_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_2_Retrieval_Working_Memory_MRI_P4_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_060_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   33    38   292   292   399   125  9543  2992 12342      fixation_cross    gabor_179 gabor_004 gabor_071 gabor_117    gabor_179 gabor_004 gabor_071_alt gabor_117_alt      "1_3_Encoding_Working_Memory_MRI_P4_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_179_004_071_117_target_position_1_2_retrieval_position_1"      gabor_179_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_3_Retrieval_Working_Memory_MRI_P4_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_179_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   46    51   292   292   399   125  9543  2992 14342      fixation_cross    gabor_148 gabor_175 gabor_042 gabor_066    gabor_148 gabor_175 gabor_042_alt gabor_066_alt      "1_4_Encoding_Working_Memory_MRI_P4_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_148_175_042_066_target_position_1_2_retrieval_position_1"      gabor_148_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_4_Retrieval_Working_Memory_MRI_P4_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_148_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   60    65   292   292   399   125  9543  2992 14342      fixation_cross    gabor_061 gabor_111 gabor_140 gabor_030    gabor_061 gabor_111 gabor_140_alt gabor_030_alt      "1_5_Encoding_Working_Memory_MRI_P4_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_061_111_140_030_target_position_1_2_retrieval_position_3"      gabor_circ gabor_circ gabor_140_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_5_Retrieval_Working_Memory_MRI_P4_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_140_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   74    80   292   292   399   125 11543  2992 14342      fixation_cross    gabor_060 gabor_031 gabor_146 gabor_120    gabor_060_alt gabor_031 gabor_146_alt gabor_120      "1_6_Encoding_Working_Memory_MRI_P4_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_060_031_146_120_target_position_2_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_168_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_6_Retrieval_Working_Memory_MRI_P4_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_168_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   89    95   292   292   399   125 11543  2992 12342      fixation_cross    gabor_103 gabor_041 gabor_121 gabor_070    gabor_103_alt gabor_041 gabor_121_alt gabor_070      "1_7_Encoding_Working_Memory_MRI_P4_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_103_041_121_070_target_position_2_4_retrieval_position_2"     gabor_circ gabor_086_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_7_Retrieval_Working_Memory_MRI_P4_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_086_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  103   108   292   292   399   125  9543  2992 14342      fixation_cross    gabor_176 gabor_087 gabor_061 gabor_117    gabor_176 gabor_087_alt gabor_061 gabor_117_alt      "1_8_Encoding_Working_Memory_MRI_P4_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_176_087_061_117_target_position_1_3_retrieval_position_2"      gabor_circ gabor_087_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_8_Retrieval_Working_Memory_MRI_P4_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_087_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  117   122   292   292   399   125  9543  2992 14342      fixation_cross    gabor_145 gabor_026 gabor_064 gabor_091    gabor_145 gabor_026_alt gabor_064 gabor_091_alt      "1_9_Encoding_Working_Memory_MRI_P4_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_145_026_064_091_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_112_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_9_Retrieval_Working_Memory_MRI_P4_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_112_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  131   137   292   292   399   125 11543  2992 12342      fixation_cross    gabor_020 gabor_091 gabor_180 gabor_054    gabor_020 gabor_091_alt gabor_180_alt gabor_054     "1_10_Encoding_Working_Memory_MRI_P4_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_020_091_180_054_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_054_framed    blank blank blank blank    fixation_cross_target_position_1_4    "1_10_Retrieval_Working_Memory_MRI_P4_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_054_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  145   150   292   292   399   125  9543  2992 14342      fixation_cross    gabor_084 gabor_112 gabor_056 gabor_032    gabor_084_alt gabor_112_alt gabor_056 gabor_032     "1_11_Encoding_Working_Memory_MRI_P4_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_084_112_056_032_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_056_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_11_Retrieval_Working_Memory_MRI_P4_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_056_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  159   165   292   292   399   125 11543  2992 12342      fixation_cross    gabor_032 gabor_144 gabor_168 gabor_015    gabor_032_alt gabor_144_alt gabor_168 gabor_015     "1_12_Encoding_Working_Memory_MRI_P4_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_032_144_168_015_target_position_3_4_retrieval_position_3"     gabor_circ gabor_circ gabor_168_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_12_Retrieval_Working_Memory_MRI_P4_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_168_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  173   179   292   292   399   125 11543  2992 12342      fixation_cross    gabor_032 gabor_013 gabor_162 gabor_121    gabor_032 gabor_013_alt gabor_162 gabor_121_alt     "1_13_Encoding_Working_Memory_MRI_P4_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_032_013_162_121_target_position_1_3_retrieval_position_1"     gabor_032_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_13_Retrieval_Working_Memory_MRI_P4_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_032_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  187   193   292   292   399   125 11543  2992 12342      fixation_cross    gabor_065 gabor_040 gabor_015 gabor_153    gabor_065_alt gabor_040 gabor_015 gabor_153_alt     "1_14_Encoding_Working_Memory_MRI_P4_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_065_040_015_153_target_position_2_3_retrieval_position_2"     gabor_circ gabor_177_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_14_Retrieval_Working_Memory_MRI_P4_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_177_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_055 gabor_038 gabor_093 gabor_168    gabor_055 gabor_038_alt gabor_093 gabor_168_alt     "1_15_Encoding_Working_Memory_MRI_P4_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_055_038_093_168_target_position_1_3_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_123_framed    blank blank blank blank    fixation_cross_target_position_1_3    "1_15_Retrieval_Working_Memory_MRI_P4_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_123_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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