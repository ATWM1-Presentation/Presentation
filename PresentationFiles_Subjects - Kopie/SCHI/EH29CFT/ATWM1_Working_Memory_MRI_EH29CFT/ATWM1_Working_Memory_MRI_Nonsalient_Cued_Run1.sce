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
    6    12   292   292   399   125 11543  2992 14342      fixation_cross    gabor_056 gabor_146 gabor_163 gabor_089    gabor_056 gabor_146 gabor_163_alt gabor_089_alt      "1_1_Encoding_Working_Memory_MRI_P7_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_056_146_163_089_target_position_1_2_retrieval_position_2"     gabor_circ gabor_010_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_1_Retrieval_Working_Memory_MRI_P7_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_010_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   21    27   292   292   399   125 11543  2992 12342      fixation_cross    gabor_119 gabor_135 gabor_152 gabor_004    gabor_119 gabor_135 gabor_152_alt gabor_004_alt      "1_2_Encoding_Working_Memory_MRI_P7_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_119_135_152_004_target_position_1_2_retrieval_position_1"     gabor_119_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_2_Retrieval_Working_Memory_MRI_P7_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_119_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   35    40   292   292   399   125  9543  2992 14342      fixation_cross    gabor_164 gabor_179 gabor_074 gabor_145    gabor_164 gabor_179 gabor_074_alt gabor_145_alt      "1_3_Encoding_Working_Memory_MRI_P7_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_164_179_074_145_target_position_1_2_retrieval_position_2"      gabor_circ gabor_129_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_3_Retrieval_Working_Memory_MRI_P7_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_129_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   49    54   292   292   399   125  9543  2992 14342      fixation_cross    gabor_038 gabor_016 gabor_093 gabor_144    gabor_038 gabor_016_alt gabor_093 gabor_144_alt      "1_4_Encoding_Working_Memory_MRI_P7_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_038_016_093_144_target_position_1_3_retrieval_position_1"      gabor_038_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_4_Retrieval_Working_Memory_MRI_P7_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_038_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   63    68   292   292   399   125  9543  2992 12342      fixation_cross    gabor_166 gabor_128 gabor_077 gabor_099    gabor_166_alt gabor_128 gabor_077_alt gabor_099      "1_5_Encoding_Working_Memory_MRI_P7_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_166_128_077_099_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_049_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_5_Retrieval_Working_Memory_MRI_P7_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_049_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   76    81   292   292   399   125  9543  2992 12342      fixation_cross    gabor_045 gabor_064 gabor_003 gabor_152    gabor_045_alt gabor_064 gabor_003_alt gabor_152      "1_6_Encoding_Working_Memory_MRI_P7_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_045_064_003_152_target_position_2_4_retrieval_position_1"      gabor_045_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_6_Retrieval_Working_Memory_MRI_P7_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_045_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   89    95   292   292   399   125 11543  2992 14342      fixation_cross    gabor_112 gabor_176 gabor_142 gabor_066    gabor_112 gabor_176 gabor_142_alt gabor_066_alt      "1_7_Encoding_Working_Memory_MRI_P7_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_112_176_142_066_target_position_1_2_retrieval_position_2"     gabor_circ gabor_176_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_7_Retrieval_Working_Memory_MRI_P7_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_176_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  104   109   292   292   399   125  9543  2992 12342      fixation_cross    gabor_034 gabor_096 gabor_055 gabor_078    gabor_034_alt gabor_096 gabor_055 gabor_078_alt      "1_8_Encoding_Working_Memory_MRI_P7_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_034_096_055_078_target_position_2_3_retrieval_position_3"      gabor_circ gabor_circ gabor_055_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_8_Retrieval_Working_Memory_MRI_P7_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_055_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  117   123   292   292   399   125 11543  2992 12342      fixation_cross    gabor_047 gabor_098 gabor_031 gabor_113    gabor_047_alt gabor_098 gabor_031 gabor_113_alt      "1_9_Encoding_Working_Memory_MRI_P7_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_047_098_031_113_target_position_2_3_retrieval_position_3"     gabor_circ gabor_circ gabor_078_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_9_Retrieval_Working_Memory_MRI_P7_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_078_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  131   137   292   292   399   125 11543  2992 14342      fixation_cross    gabor_047 gabor_067 gabor_129 gabor_090    gabor_047 gabor_067_alt gabor_129 gabor_090_alt     "1_10_Encoding_Working_Memory_MRI_P7_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_047_067_129_090_target_position_1_3_retrieval_position_3"     gabor_circ gabor_circ gabor_129_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_10_Retrieval_Working_Memory_MRI_P7_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_129_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  146   152   292   292   399   125 11543  2992 12342      fixation_cross    gabor_062 gabor_027 gabor_082 gabor_138    gabor_062_alt gabor_027_alt gabor_082 gabor_138     "1_11_Encoding_Working_Memory_MRI_P7_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_062_027_082_138_target_position_3_4_retrieval_position_1"     gabor_110_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_11_Retrieval_Working_Memory_MRI_P7_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_110_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  160   165   292   292   399   125  9543  2992 14342      fixation_cross    gabor_169 gabor_079 gabor_121 gabor_144    gabor_169_alt gabor_079_alt gabor_121 gabor_144     "1_12_Encoding_Working_Memory_MRI_P7_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_169_079_121_144_target_position_3_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_097_framed    blank blank blank blank    fixation_cross_target_position_3_4    "1_12_Retrieval_Working_Memory_MRI_P7_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_097_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  174   179   292   292   399   125  9543  2992 14342      fixation_cross    gabor_058 gabor_085 gabor_171 gabor_006    gabor_058_alt gabor_085 gabor_171_alt gabor_006     "1_13_Encoding_Working_Memory_MRI_P7_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_058_085_171_006_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_145_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_13_Retrieval_Working_Memory_MRI_P7_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_145_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  188   194   292   292   399   125 11543  2992 14342      fixation_cross    gabor_070 gabor_033 gabor_176 gabor_147    gabor_070 gabor_033_alt gabor_176_alt gabor_147     "1_14_Encoding_Working_Memory_MRI_P7_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_070_033_176_147_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_147_framed    blank blank blank blank    fixation_cross_target_position_1_4    "1_14_Retrieval_Working_Memory_MRI_P7_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_147_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  203   208   292   292   399   125  9543  2992 12342      fixation_cross    gabor_078 gabor_117 gabor_141 gabor_160    gabor_078_alt gabor_117_alt gabor_141 gabor_160     "1_15_Encoding_Working_Memory_MRI_P7_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_078_117_141_160_target_position_3_4_retrieval_position_1"      gabor_078_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_15_Retrieval_Working_Memory_MRI_P7_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_078_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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