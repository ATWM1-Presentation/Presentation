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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_127 gabor_046 gabor_076 gabor_154    gabor_127_alt gabor_046 gabor_076_alt gabor_154      "1_1_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_127_046_076_154_target_position_2_4_retrieval_position_2"      gabor_circ gabor_093_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_1_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_093_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   20    25   292   292   399   125  9543  2992 12342      fixation_cross    gabor_046 gabor_063 gabor_097 gabor_169    gabor_046 gabor_063 gabor_097_alt gabor_169_alt      "1_2_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_046_063_097_169_target_position_1_2_retrieval_position_2"      gabor_circ gabor_018_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_2_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_018_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   33    38   292   292   399   125  9543  2992 14342      fixation_cross    gabor_009 gabor_118 gabor_039 gabor_145    gabor_009 gabor_118 gabor_039_alt gabor_145_alt      "1_3_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_009_118_039_145_target_position_1_2_retrieval_position_2"      gabor_circ gabor_118_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_3_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_118_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   47    52   292   292   399   125  9543  2992 12342      fixation_cross    gabor_027 gabor_058 gabor_073 gabor_101    gabor_027 gabor_058 gabor_073_alt gabor_101_alt      "1_4_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_027_058_073_101_target_position_1_2_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_101_framed    blank blank blank blank    fixation_cross_target_position_1_2     "1_4_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_101_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   60    66   292   292   399   125 11543  2992 14342      fixation_cross    gabor_121 gabor_067 gabor_175 gabor_098    gabor_121_alt gabor_067_alt gabor_175 gabor_098      "1_5_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_121_067_175_098_target_position_3_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_098_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_5_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_098_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   75    80   292   292   399   125  9543  2992 12342      fixation_cross    gabor_105 gabor_029 gabor_157 gabor_138    gabor_105_alt gabor_029 gabor_157_alt gabor_138      "1_6_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_105_029_157_138_target_position_2_4_retrieval_position_2"      gabor_circ gabor_029_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_6_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_029_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   88    93   292   292   399   125  9543  2992 12342      fixation_cross    gabor_011 gabor_122 gabor_082 gabor_151    gabor_011_alt gabor_122 gabor_082_alt gabor_151      "1_7_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_011_122_082_151_target_position_2_4_retrieval_position_2"      gabor_circ gabor_122_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_7_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_122_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  101   107   292   292   399   125 11543  2992 14342      fixation_cross    gabor_002 gabor_142 gabor_109 gabor_167    gabor_002 gabor_142_alt gabor_109_alt gabor_167      "1_8_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_002_142_109_167_target_position_1_4_retrieval_position_2"     gabor_circ gabor_092_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_8_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_092_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  116   122   292   292   399   125 11543  2992 14342      fixation_cross    gabor_133 gabor_025 gabor_062 gabor_103    gabor_133 gabor_025_alt gabor_062 gabor_103_alt      "1_9_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_133_025_062_103_target_position_1_3_retrieval_position_1"     gabor_179_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_9_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_179_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  131   137   292   292   399   125 11543  2992 14342      fixation_cross    gabor_045 gabor_174 gabor_008 gabor_064    gabor_045_alt gabor_174 gabor_008_alt gabor_064     "1_10_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_045_174_008_064_target_position_2_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_114_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_10_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_114_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  146   152   292   292   399   125 11543  2992 14342      fixation_cross    gabor_083 gabor_045 gabor_163 gabor_017    gabor_083 gabor_045 gabor_163_alt gabor_017_alt     "1_11_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_083_045_163_017_target_position_1_2_retrieval_position_1"     gabor_083_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_11_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_083_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  161   167   292   292   399   125 11543  2992 12342      fixation_cross    gabor_013 gabor_044 gabor_124 gabor_178    gabor_013 gabor_044_alt gabor_124_alt gabor_178     "1_12_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_013_044_124_178_target_position_1_4_retrieval_position_2"     gabor_circ gabor_044_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_12_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_044_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  175   180   292   292   399   125  9543  2992 12342      fixation_cross    gabor_040 gabor_150 gabor_069 gabor_084    gabor_040_alt gabor_150 gabor_069_alt gabor_084     "1_13_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_040_150_069_084_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_084_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_13_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_084_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  188   193   292   292   399   125  9543  2992 14342      fixation_cross    gabor_091 gabor_157 gabor_177 gabor_046    gabor_091 gabor_157_alt gabor_177 gabor_046_alt     "1_14_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_091_157_177_046_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_130_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_14_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_130_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_042 gabor_061 gabor_129 gabor_019    gabor_042_alt gabor_061 gabor_129 gabor_019_alt     "1_15_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_042_061_129_019_target_position_2_3_retrieval_position_3"     gabor_circ gabor_circ gabor_179_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_15_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_179_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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