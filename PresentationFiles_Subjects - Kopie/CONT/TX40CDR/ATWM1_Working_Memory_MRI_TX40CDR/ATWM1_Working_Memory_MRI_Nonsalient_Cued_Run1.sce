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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_016 gabor_148 gabor_031 gabor_178    gabor_016 gabor_148_alt gabor_031 gabor_178_alt      "1_1_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_016_148_031_178_target_position_1_3_retrieval_position_1"     gabor_063_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_1_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_063_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   20    25   292   292   399   125  9543  2992 14342      fixation_cross    gabor_038 gabor_087 gabor_053 gabor_120    gabor_038 gabor_087_alt gabor_053_alt gabor_120      "1_2_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_038_087_053_120_target_position_1_4_retrieval_position_1"      gabor_177_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_2_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_177_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   34    39   292   292   399   125  9543  2992 14342      fixation_cross    gabor_102 gabor_058 gabor_039 gabor_174    gabor_102_alt gabor_058_alt gabor_039 gabor_174      "1_3_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_102_058_039_174_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_084_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_3_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_084_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   48    53   292   292   399   125  9543  2992 14342      fixation_cross    gabor_054 gabor_015 gabor_122 gabor_161    gabor_054_alt gabor_015_alt gabor_122 gabor_161      "1_4_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_054_015_122_161_target_position_3_4_retrieval_position_1"      gabor_100_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_4_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_100_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   62    67   292   292   399   125  9543  2992 12342      fixation_cross    gabor_055 gabor_092 gabor_073 gabor_006    gabor_055 gabor_092_alt gabor_073_alt gabor_006      "1_5_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_055_092_073_006_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_141_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_5_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_141_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   75    80   292   292   399   125  9543  2992 12342      fixation_cross    gabor_055 gabor_012 gabor_174 gabor_084    gabor_055_alt gabor_012_alt gabor_174 gabor_084      "1_6_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_055_012_174_084_target_position_3_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_131_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_6_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_131_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   88    94   292   292   399   125 11543  2992 14342      fixation_cross    gabor_126 gabor_018 gabor_098 gabor_177    gabor_126_alt gabor_018 gabor_098 gabor_177_alt      "1_7_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_126_018_098_177_target_position_2_3_retrieval_position_2"     gabor_circ gabor_018_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_7_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_018_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  103   109   292   292   399   125 11543  2992 12342      fixation_cross    gabor_033 gabor_163 gabor_144 gabor_007    gabor_033 gabor_163 gabor_144_alt gabor_007_alt      "1_8_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_033_163_144_007_target_position_1_2_retrieval_position_1"     gabor_033_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_8_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_033_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  117   123   292   292   399   125 11543  2992 14342      fixation_cross    gabor_137 gabor_052 gabor_022 gabor_079    gabor_137_alt gabor_052 gabor_022 gabor_079_alt      "1_9_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_137_052_022_079_target_position_2_3_retrieval_position_3"     gabor_circ gabor_circ gabor_160_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_9_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_160_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  132   138   292   292   399   125 11543  2992 12342      fixation_cross    gabor_051 gabor_160 gabor_023 gabor_132    gabor_051 gabor_160_alt gabor_023_alt gabor_132     "1_10_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_051_160_023_132_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_132_framed    blank blank blank blank    fixation_cross_target_position_1_4    "1_10_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_132_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  146   152   292   292   399   125 11543  2992 12342      fixation_cross    gabor_033 gabor_115 gabor_084 gabor_060    gabor_033_alt gabor_115 gabor_084 gabor_060_alt     "1_11_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_033_115_084_060_target_position_2_3_retrieval_position_1"     gabor_033_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_11_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_033_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  160   165   292   292   399   125  9543  2992 14342      fixation_cross    gabor_076 gabor_034 gabor_141 gabor_096    gabor_076_alt gabor_034 gabor_141_alt gabor_096     "1_12_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_076_034_141_096_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_096_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_12_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_096_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  174   179   292   292   399   125  9543  2992 14342      fixation_cross    gabor_051 gabor_118 gabor_005 gabor_075    gabor_051_alt gabor_118 gabor_005_alt gabor_075     "1_13_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_051_118_005_075_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_075_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_13_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_075_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  188   193   292   292   399   125  9543  2992 14342      fixation_cross    gabor_075 gabor_011 gabor_060 gabor_118    gabor_075_alt gabor_011_alt gabor_060 gabor_118     "1_14_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_075_011_060_118_target_position_3_4_retrieval_position_1"      gabor_075_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_14_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_075_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_136 gabor_098 gabor_180 gabor_160    gabor_136_alt gabor_098 gabor_180_alt gabor_160     "1_15_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_136_098_180_160_target_position_2_4_retrieval_position_2"     gabor_circ gabor_098_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_15_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_098_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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