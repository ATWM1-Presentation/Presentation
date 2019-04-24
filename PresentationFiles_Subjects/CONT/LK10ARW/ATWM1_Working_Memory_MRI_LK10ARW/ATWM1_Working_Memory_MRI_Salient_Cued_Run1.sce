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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_028 gabor_006 gabor_162 gabor_052    gabor_028 gabor_006_alt gabor_162_alt gabor_052      "1_1_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_028_006_162_052_target_position_2_3_retrieval_position_3"         gabor_circ gabor_circ gabor_117_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_1_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_117_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    25   292   292   399   125  9543  2992 12342      fixation_cross    gabor_010 gabor_153 gabor_048 gabor_029    gabor_010 gabor_153_alt gabor_048 gabor_029_alt      "1_2_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_010_153_048_029_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_078_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_2_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_078_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   33    39   292   292   399   125 11543  2992 14342      fixation_cross    gabor_075 gabor_148 gabor_008 gabor_125    gabor_075 gabor_148_alt gabor_008 gabor_125_alt      "1_3_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_075_148_008_125_target_position_2_4_retrieval_position_2"        gabor_circ gabor_148_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_3_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_148_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   48    54   292   292   399   125 11543  2992 14342      fixation_cross    gabor_119 gabor_164 gabor_180 gabor_047    gabor_119_alt gabor_164 gabor_180_alt gabor_047      "1_4_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_119_164_180_047_target_position_1_3_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_047_framed    blank blank blank blank    fixation_cross_target_position_1_3     "1_4_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_047_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   63    69   292   292   399   125 11543  2992 12342      fixation_cross    gabor_119 gabor_175 gabor_098 gabor_065    gabor_119 gabor_175 gabor_098_alt gabor_065_alt      "1_5_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_119_175_098_065_target_position_3_4_retrieval_position_3"        gabor_circ gabor_circ gabor_049_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_5_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_049_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   77    83   292   292   399   125 11543  2992 14342      fixation_cross    gabor_142 gabor_101 gabor_079 gabor_016    gabor_142 gabor_101_alt gabor_079 gabor_016_alt      "1_6_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_142_101_079_016_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_016_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_6_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_016_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   92    97   292   292   399   125  9543  2992 12342      fixation_cross    gabor_172 gabor_098 gabor_113 gabor_027    gabor_172 gabor_098_alt gabor_113 gabor_027_alt      "1_7_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_172_098_113_027_target_position_2_4_retrieval_position_2"         gabor_circ gabor_098_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_7_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_098_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  105   110   292   292   399   125  9543  2992 14342      fixation_cross    gabor_035 gabor_080 gabor_121 gabor_050    gabor_035_alt gabor_080 gabor_121_alt gabor_050      "1_8_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_035_080_121_050_target_position_1_3_retrieval_position_1"         gabor_170_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_8_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_170_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  119   125   292   292   399   125 11543  2992 14342      fixation_cross    gabor_145 gabor_161 gabor_107 gabor_087    gabor_145 gabor_161_alt gabor_107 gabor_087_alt      "1_9_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_145_161_107_087_target_position_2_4_retrieval_position_2"        gabor_circ gabor_161_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_9_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_161_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  134   139   292   292   399   125  9543  2992 14342      fixation_cross    gabor_011 gabor_036 gabor_074 gabor_145    gabor_011 gabor_036_alt gabor_074_alt gabor_145     "1_10_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_011_036_074_145_target_position_2_3_retrieval_position_1"         gabor_056_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_10_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_056_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  148   153   292   292   399   125  9543  2992 12342      fixation_cross    gabor_148 gabor_015 gabor_126 gabor_042    gabor_148 gabor_015 gabor_126_alt gabor_042_alt     "1_11_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_148_015_126_042_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_042_framed    blank blank blank blank    fixation_cross_target_position_3_4    "1_11_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_042_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  161   166   292   292   399   125  9543  2992 12342      fixation_cross    gabor_066 gabor_145 gabor_172 gabor_082    gabor_066 gabor_145_alt gabor_172_alt gabor_082     "1_12_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_066_145_172_082_target_position_2_3_retrieval_position_3"         gabor_circ gabor_circ gabor_036_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_12_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_036_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  174   179   292   292   399   125  9543  2992 14342      fixation_cross    gabor_033 gabor_074 gabor_152 gabor_004    gabor_033_alt gabor_074 gabor_152 gabor_004_alt     "1_13_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_033_074_152_004_target_position_1_4_retrieval_position_2"         gabor_circ gabor_074_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_13_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_074_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   194   292   292   399   125 11543  2992 12342      fixation_cross    gabor_036 gabor_109 gabor_169 gabor_146    gabor_036_alt gabor_109_alt gabor_169 gabor_146     "1_14_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_036_109_169_146_target_position_1_2_retrieval_position_2"        gabor_circ gabor_060_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_14_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_060_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_095 gabor_013 gabor_178 gabor_068    gabor_095 gabor_013 gabor_178_alt gabor_068_alt     "1_15_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_095_013_178_068_target_position_3_4_retrieval_position_3"        gabor_circ gabor_circ gabor_178_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_15_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_178_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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