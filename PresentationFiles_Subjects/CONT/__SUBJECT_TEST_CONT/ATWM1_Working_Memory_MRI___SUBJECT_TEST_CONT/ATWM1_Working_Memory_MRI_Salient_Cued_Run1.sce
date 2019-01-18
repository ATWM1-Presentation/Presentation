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
    6    11   292   292   399   125  9543  2992 12342      fixation_cross    gabor_092 gabor_067 gabor_004 gabor_039    gabor_092 gabor_067_alt gabor_004 gabor_039_alt      "1_1_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_092_067_004_039_target_position_2_4_retrieval_position_2"         gabor_circ gabor_067_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_1_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_067_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   19    25   292   292   399   125 11543  2992 12342      fixation_cross    gabor_099 gabor_150 gabor_063 gabor_123    gabor_099_alt gabor_150 gabor_063 gabor_123_alt      "1_2_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_099_150_063_123_target_position_1_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_170_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_2_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_170_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   33    38   292   292   399   125  9543  2992 14342      fixation_cross    gabor_029 gabor_152 gabor_062 gabor_046    gabor_029 gabor_152_alt gabor_062 gabor_046_alt      "1_3_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_029_152_062_046_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_046_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_3_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_046_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   47    53   292   292   399   125 11543  2992 14342      fixation_cross    gabor_064 gabor_033 gabor_082 gabor_002    gabor_064 gabor_033_alt gabor_082_alt gabor_002      "1_4_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_064_033_082_002_target_position_2_3_retrieval_position_1"        gabor_109_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_4_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_109_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   62    68   292   292   399   125 11543  2992 14342      fixation_cross    gabor_136 gabor_093 gabor_173 gabor_110    gabor_136 gabor_093 gabor_173_alt gabor_110_alt      "1_5_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_136_093_173_110_target_position_3_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_110_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_5_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_110_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   77    83   292   292   399   125 11543  2992 12342      fixation_cross    gabor_116 gabor_037 gabor_054 gabor_006    gabor_116_alt gabor_037 gabor_054 gabor_006_alt      "1_6_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_116_037_054_006_target_position_1_4_retrieval_position_1"        gabor_070_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_6_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_070_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   91    96   292   292   399   125  9543  2992 14342      fixation_cross    gabor_075 gabor_011 gabor_117 gabor_058    gabor_075_alt gabor_011 gabor_117_alt gabor_058      "1_7_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_075_011_117_058_target_position_1_3_retrieval_position_1"         gabor_075_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_7_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_075_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  105   110   292   292   399   125  9543  2992 14342      fixation_cross    gabor_071 gabor_102 gabor_141 gabor_025    gabor_071_alt gabor_102 gabor_141_alt gabor_025      "1_8_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_071_102_141_025_target_position_1_3_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_025_framed    blank blank blank blank    fixation_cross_target_position_1_3     "1_8_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_025_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  119   124   292   292   399   125  9543  2992 12342      fixation_cross    gabor_178 gabor_140 gabor_155 gabor_017    gabor_178 gabor_140_alt gabor_155_alt gabor_017      "1_9_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_178_140_155_017_target_position_2_3_retrieval_position_3"         gabor_circ gabor_circ gabor_106_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_9_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_106_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  132   137   292   292   399   125  9543  2992 14342      fixation_cross    gabor_100 gabor_015 gabor_045 gabor_073    gabor_100 gabor_015 gabor_045_alt gabor_073_alt     "1_10_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_100_015_045_073_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_045_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_10_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_045_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  146   152   292   292   399   125 11543  2992 14342      fixation_cross    gabor_095 gabor_050 gabor_026 gabor_160    gabor_095_alt gabor_050 gabor_026_alt gabor_160     "1_11_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_095_050_026_160_target_position_1_3_retrieval_position_1"        gabor_095_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_11_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_095_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  161   167   292   292   399   125 11543  2992 12342      fixation_cross    gabor_003 gabor_139 gabor_092 gabor_164    gabor_003 gabor_139_alt gabor_092 gabor_164_alt     "1_12_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_003_139_092_164_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_115_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_12_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_115_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  175   181   292   292   399   125 11543  2992 12342      fixation_cross    gabor_013 gabor_178 gabor_041 gabor_067    gabor_013 gabor_178_alt gabor_041_alt gabor_067     "1_13_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_013_178_041_067_target_position_2_3_retrieval_position_3"        gabor_circ gabor_circ gabor_090_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_13_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_090_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  189   194   292   292   399   125  9543  2992 14342      fixation_cross    gabor_148 gabor_176 gabor_092 gabor_018    gabor_148_alt gabor_176_alt gabor_092 gabor_018     "1_14_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_148_176_092_018_target_position_1_2_retrieval_position_2"         gabor_circ gabor_036_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_14_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_036_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  203   208   292   292   399   125  9543  2992 12342      fixation_cross    gabor_129 gabor_051 gabor_090 gabor_071    gabor_129 gabor_051 gabor_090_alt gabor_071_alt     "1_15_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_129_051_090_071_target_position_3_4_retrieval_position_2"         gabor_circ gabor_051_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_15_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_051_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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