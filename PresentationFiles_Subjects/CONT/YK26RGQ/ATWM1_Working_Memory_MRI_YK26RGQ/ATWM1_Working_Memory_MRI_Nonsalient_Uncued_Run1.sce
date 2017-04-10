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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_155 gabor_003 gabor_082 gabor_110    gabor_155 gabor_003_alt gabor_082 gabor_110_alt      "1_1_Encoding_Working_Memory_MRI_P3_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_155_003_082_110_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_035_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P3_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_035_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   20    25   292   292   399   125  9543  2992 14342      fixation_cross    gabor_124 gabor_092 gabor_156 gabor_051    gabor_124 gabor_092 gabor_156_alt gabor_051_alt      "1_2_Encoding_Working_Memory_MRI_P3_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_124_092_156_051_target_position_1_2_retrieval_position_1"      gabor_075_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P3_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_075_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   34    39   292   292   399   125  9543  2992 14342      fixation_cross    gabor_050 gabor_083 gabor_118 gabor_164    gabor_050_alt gabor_083_alt gabor_118 gabor_164      "1_3_Encoding_Working_Memory_MRI_P3_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_050_083_118_164_target_position_3_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_029_framed    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P3_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_029_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   48    54   292   292   399   125 11543  2992 12342      fixation_cross    gabor_010 gabor_036 gabor_145 gabor_116    gabor_010_alt gabor_036 gabor_145 gabor_116_alt      "1_4_Encoding_Working_Memory_MRI_P3_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_010_036_145_116_target_position_2_3_retrieval_position_2"     gabor_circ gabor_036_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P3_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_036_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   62    68   292   292   399   125 11543  2992 12342      fixation_cross    gabor_005 gabor_115 gabor_089 gabor_038    gabor_005 gabor_115 gabor_089_alt gabor_038_alt      "1_5_Encoding_Working_Memory_MRI_P3_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_005_115_089_038_target_position_1_2_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_038_framed    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P3_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_038_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   76    82   292   292   399   125 11543  2992 12342      fixation_cross    gabor_169 gabor_130 gabor_012 gabor_147    gabor_169 gabor_130_alt gabor_012_alt gabor_147      "1_6_Encoding_Working_Memory_MRI_P3_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_169_130_012_147_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_147_framed    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P3_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_147_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   90    96   292   292   399   125 11543  2992 14342      fixation_cross    gabor_176 gabor_150 gabor_106 gabor_042    gabor_176 gabor_150_alt gabor_106 gabor_042_alt      "1_7_Encoding_Working_Memory_MRI_P3_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_176_150_106_042_target_position_1_3_retrieval_position_3"     gabor_circ gabor_circ gabor_106_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P3_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_106_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  105   110   292   292   399   125  9543  2992 14342      fixation_cross    gabor_088 gabor_008 gabor_042 gabor_150    gabor_088 gabor_008_alt gabor_042 gabor_150_alt      "1_8_Encoding_Working_Memory_MRI_P3_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_088_008_042_150_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_042_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P3_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_042_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  119   125   292   292   399   125 11543  2992 12342      fixation_cross    gabor_127 gabor_092 gabor_010 gabor_071    gabor_127 gabor_092 gabor_010_alt gabor_071_alt      "1_9_Encoding_Working_Memory_MRI_P3_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_127_092_010_071_target_position_1_2_retrieval_position_3"     gabor_circ gabor_circ gabor_010_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P3_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_010_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  133   138   292   292   399   125  9543  2992 14342      fixation_cross    gabor_069 gabor_139 gabor_109 gabor_180    gabor_069 gabor_139_alt gabor_109 gabor_180_alt     "1_10_Encoding_Working_Memory_MRI_P3_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_069_139_109_180_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_157_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P3_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_157_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  147   152   292   292   399   125  9543  2992 12342      fixation_cross    gabor_130 gabor_003 gabor_108 gabor_160    gabor_130_alt gabor_003 gabor_108_alt gabor_160     "1_11_Encoding_Working_Memory_MRI_P3_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_130_003_108_160_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_160_framed    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P3_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_160_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  160   165   292   292   399   125  9543  2992 12342      fixation_cross    gabor_066 gabor_174 gabor_034 gabor_016    gabor_066_alt gabor_174 gabor_034 gabor_016_alt     "1_12_Encoding_Working_Memory_MRI_P3_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_066_174_034_016_target_position_2_3_retrieval_position_3"      gabor_circ gabor_circ gabor_084_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P3_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_084_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  173   179   292   292   399   125 11543  2992 12342      fixation_cross    gabor_103 gabor_077 gabor_123 gabor_154    gabor_103_alt gabor_077 gabor_123 gabor_154_alt     "1_13_Encoding_Working_Memory_MRI_P3_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_103_077_123_154_target_position_2_3_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_014_framed    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P3_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_014_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  187   192   292   292   399   125  9543  2992 14342      fixation_cross    gabor_148 gabor_117 gabor_008 gabor_039    gabor_148 gabor_117_alt gabor_008 gabor_039_alt     "1_14_Encoding_Working_Memory_MRI_P3_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_148_117_008_039_target_position_1_3_retrieval_position_1"      gabor_148_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P3_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_148_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_164 gabor_003 gabor_033 gabor_081    gabor_164 gabor_003 gabor_033_alt gabor_081_alt     "1_15_Encoding_Working_Memory_MRI_P3_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_164_003_033_081_target_position_1_2_retrieval_position_2"     gabor_circ gabor_052_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P3_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_052_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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