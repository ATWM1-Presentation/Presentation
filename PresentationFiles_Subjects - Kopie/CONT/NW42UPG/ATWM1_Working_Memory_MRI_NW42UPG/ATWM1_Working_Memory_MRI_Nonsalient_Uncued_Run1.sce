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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_045 gabor_001 gabor_019 gabor_064    gabor_045 gabor_001_alt gabor_019 gabor_064_alt      "1_1_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_045_001_019_064_target_position_1_3_retrieval_position_1"      gabor_090_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_090_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   20    25   292   292   399   125  9543  2992 14342      fixation_cross    gabor_152 gabor_087 gabor_105 gabor_041    gabor_152_alt gabor_087_alt gabor_105 gabor_041      "1_2_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_152_087_105_041_target_position_3_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_041_framed    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_041_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   34    40   292   292   399   125 11543  2992 12342      fixation_cross    gabor_073 gabor_158 gabor_135 gabor_048    gabor_073 gabor_158 gabor_135_alt gabor_048_alt      "1_3_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_073_158_135_048_target_position_1_2_retrieval_position_2"     gabor_circ gabor_113_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_113_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   48    54   292   292   399   125 11543  2992 14342      fixation_cross    gabor_067 gabor_147 gabor_037 gabor_174    gabor_067 gabor_147_alt gabor_037 gabor_174_alt      "1_4_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_067_147_037_174_target_position_1_3_retrieval_position_1"     gabor_067_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_067_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   63    69   292   292   399   125 11543  2992 14342      fixation_cross    gabor_080 gabor_065 gabor_152 gabor_170    gabor_080 gabor_065_alt gabor_152 gabor_170_alt      "1_5_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_080_065_152_170_target_position_1_3_retrieval_position_1"     gabor_080_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_080_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   78    83   292   292   399   125  9543  2992 14342      fixation_cross    gabor_098 gabor_083 gabor_009 gabor_173    gabor_098 gabor_083_alt gabor_009_alt gabor_173      "1_6_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_098_083_009_173_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_037_framed    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_037_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   92    97   292   292   399   125  9543  2992 14342      fixation_cross    gabor_033 gabor_096 gabor_013 gabor_059    gabor_033 gabor_096_alt gabor_013 gabor_059_alt      "1_7_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_033_096_013_059_target_position_1_3_retrieval_position_2"      gabor_circ gabor_145_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_145_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  106   112   292   292   399   125 11543  2992 14342      fixation_cross    gabor_139 gabor_109 gabor_091 gabor_004    gabor_139 gabor_109 gabor_091_alt gabor_004_alt      "1_8_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_139_109_091_004_target_position_1_2_retrieval_position_2"     gabor_circ gabor_159_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_159_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  121   126   292   292   399   125  9543  2992 14342      fixation_cross    gabor_118 gabor_180 gabor_133 gabor_001    gabor_118_alt gabor_180 gabor_133_alt gabor_001      "1_9_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_118_180_133_001_target_position_2_4_retrieval_position_2"      gabor_circ gabor_044_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_044_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  135   141   292   292   399   125 11543  2992 12342      fixation_cross    gabor_118 gabor_002 gabor_155 gabor_041    gabor_118_alt gabor_002 gabor_155_alt gabor_041     "1_10_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_118_002_155_041_target_position_2_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_041_framed    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_041_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  149   155   292   292   399   125 11543  2992 12342      fixation_cross    gabor_029 gabor_083 gabor_149 gabor_064    gabor_029 gabor_083_alt gabor_149 gabor_064_alt     "1_11_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_029_083_149_064_target_position_1_3_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_064_framed    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_064_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  163   169   292   292   399   125 11543  2992 12342      fixation_cross    gabor_109 gabor_020 gabor_075 gabor_136    gabor_109 gabor_020 gabor_075_alt gabor_136_alt     "1_12_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_109_020_075_136_target_position_1_2_retrieval_position_1"     gabor_154_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_154_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  177   182   292   292   399   125  9543  2992 12342      fixation_cross    gabor_153 gabor_080 gabor_041 gabor_015    gabor_153_alt gabor_080_alt gabor_041 gabor_015     "1_13_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_153_080_041_015_target_position_3_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_015_framed    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_015_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  190   195   292   292   399   125  9543  2992 12342      fixation_cross    gabor_055 gabor_032 gabor_172 gabor_137    gabor_055 gabor_032_alt gabor_172_alt gabor_137     "1_14_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_055_032_172_137_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_137_framed    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_137_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  203   208   292   292   399   125  9543  2992 12342      fixation_cross    gabor_110 gabor_161 gabor_078 gabor_053    gabor_110 gabor_161 gabor_078_alt gabor_053_alt     "1_15_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_110_161_078_053_target_position_1_2_retrieval_position_3"      gabor_circ gabor_circ gabor_078_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_078_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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