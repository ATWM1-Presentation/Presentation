# ATWM1 MRI Experiment
                         
scenario = "ATWM1_Working_Memory_MRI_salient_uncued_run1";
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
    6    12   292   292   399   125 11543  2992 14342      fixation_cross    gabor_140 gabor_122 gabor_010 gabor_180    gabor_140_alt gabor_122 gabor_010_alt gabor_180      "1_1_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_140_122_010_180_target_position_1_3_retrieval_position_3"        gabor_circ gabor_circ gabor_010_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_010_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   21    27   292   292   399   125 11543  2992 14342      fixation_cross    gabor_020 gabor_059 gabor_104 gabor_042    gabor_020 gabor_059 gabor_104_alt gabor_042_alt      "1_2_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_020_059_104_042_target_position_3_4_retrieval_position_3"        gabor_circ gabor_circ gabor_104_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_104_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   36    42   292   292   399   125 11543  2992 14342      fixation_cross    gabor_042 gabor_018 gabor_101 gabor_127    gabor_042_alt gabor_018 gabor_101 gabor_127_alt      "1_3_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_042_018_101_127_target_position_1_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_079_framed    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_079_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   51    56   292   292   399   125  9543  2992 14342      fixation_cross    gabor_003 gabor_020 gabor_172 gabor_037    gabor_003_alt gabor_020 gabor_172 gabor_037_alt      "1_4_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_003_020_172_037_target_position_1_4_retrieval_position_1"         gabor_053_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_053_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   65    71   292   292   399   125 11543  2992 12342      fixation_cross    gabor_029 gabor_082 gabor_064 gabor_049    gabor_029_alt gabor_082 gabor_064 gabor_049_alt      "1_5_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_029_082_064_049_target_position_1_4_retrieval_position_3"        gabor_circ gabor_circ gabor_111_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_111_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   79    85   292   292   399   125 11543  2992 14342      fixation_cross    gabor_127 gabor_159 gabor_041 gabor_021    gabor_127_alt gabor_159_alt gabor_041 gabor_021      "1_6_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_127_159_041_021_target_position_1_2_retrieval_position_1"        gabor_082_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_082_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   94    99   292   292   399   125  9543  2992 12342      fixation_cross    gabor_039 gabor_014 gabor_172 gabor_094    gabor_039 gabor_014_alt gabor_172_alt gabor_094      "1_7_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_039_014_172_094_target_position_2_3_retrieval_position_2"         gabor_circ gabor_014_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_014_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  107   112   292   292   399   125  9543  2992 12342      fixation_cross    gabor_095 gabor_141 gabor_021 gabor_065    gabor_095 gabor_141_alt gabor_021 gabor_065_alt      "1_8_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_095_141_021_065_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_065_framed    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_065_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  120   126   292   292   399   125 11543  2992 12342      fixation_cross    gabor_133 gabor_014 gabor_149 gabor_061    gabor_133_alt gabor_014 gabor_149_alt gabor_061      "1_9_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_133_014_149_061_target_position_1_3_retrieval_position_1"        gabor_133_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_133_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  134   139   292   292   399   125  9543  2992 12342      fixation_cross    gabor_112 gabor_175 gabor_147 gabor_127    gabor_112 gabor_175_alt gabor_147 gabor_127_alt     "1_10_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_112_175_147_127_target_position_2_4_retrieval_position_1"         gabor_112_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_112_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  147   152   292   292   399   125  9543  2992 12342      fixation_cross    gabor_097 gabor_056 gabor_143 gabor_177    gabor_097 gabor_056 gabor_143_alt gabor_177_alt     "1_11_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_097_056_143_177_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_008_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_008_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  160   165   292   292   399   125  9543  2992 14342      fixation_cross    gabor_156 gabor_016 gabor_121 gabor_089    gabor_156_alt gabor_016 gabor_121_alt gabor_089     "1_12_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_156_016_121_089_target_position_1_3_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_089_framed    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_089_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  174   179   292   292   399   125  9543  2992 12342      fixation_cross    gabor_139 gabor_069 gabor_088 gabor_114    gabor_139_alt gabor_069 gabor_088 gabor_114_alt     "1_13_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_139_069_088_114_target_position_1_4_retrieval_position_1"         gabor_139_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_139_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  187   192   292   292   399   125  9543  2992 14342      fixation_cross    gabor_111 gabor_144 gabor_175 gabor_002    gabor_111_alt gabor_144 gabor_175_alt gabor_002     "1_14_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_111_144_175_002_target_position_1_3_retrieval_position_1"         gabor_063_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_063_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_010 gabor_074 gabor_125 gabor_093    gabor_010_alt gabor_074 gabor_125 gabor_093_alt     "1_15_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_010_074_125_093_target_position_1_4_retrieval_position_1"        gabor_145_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_145_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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