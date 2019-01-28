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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_073 gabor_131 gabor_051 gabor_116    gabor_073_alt gabor_131_alt gabor_051 gabor_116      "1_1_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_073_131_051_116_target_position_1_2_retrieval_position_2"         gabor_circ gabor_179_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_1_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_179_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   20    26   292   292   399   125 11543  2992 12342      fixation_cross    gabor_038 gabor_148 gabor_071 gabor_109    gabor_038 gabor_148 gabor_071_alt gabor_109_alt      "1_2_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_038_148_071_109_target_position_3_4_retrieval_position_3"        gabor_circ gabor_circ gabor_071_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_2_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_071_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   34    40   292   292   399   125 11543  2992 12342      fixation_cross    gabor_110 gabor_049 gabor_125 gabor_092    gabor_110 gabor_049_alt gabor_125_alt gabor_092      "1_3_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_110_049_125_092_target_position_2_3_retrieval_position_2"        gabor_circ gabor_004_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_3_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_004_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   48    53   292   292   399   125  9543  2992 14342      fixation_cross    gabor_017 gabor_087 gabor_066 gabor_106    gabor_017_alt gabor_087_alt gabor_066 gabor_106      "1_4_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_017_087_066_106_target_position_1_2_retrieval_position_2"         gabor_circ gabor_087_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_4_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_087_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   62    67   292   292   399   125  9543  2992 14342      fixation_cross    gabor_052 gabor_113 gabor_071 gabor_133    gabor_052 gabor_113_alt gabor_071_alt gabor_133      "1_5_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_052_113_071_133_target_position_2_3_retrieval_position_3"         gabor_circ gabor_circ gabor_071_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_5_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_071_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   76    82   292   292   399   125 11543  2992 14342      fixation_cross    gabor_005 gabor_092 gabor_028 gabor_170    gabor_005 gabor_092_alt gabor_028_alt gabor_170      "1_6_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_005_092_028_170_target_position_2_3_retrieval_position_2"        gabor_circ gabor_092_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_6_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_092_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   91    97   292   292   399   125 11543  2992 12342      fixation_cross    gabor_025 gabor_050 gabor_091 gabor_179    gabor_025_alt gabor_050 gabor_091 gabor_179_alt      "1_7_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_025_050_091_179_target_position_1_4_retrieval_position_3"        gabor_circ gabor_circ gabor_091_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_7_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_091_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  105   110   292   292   399   125  9543  2992 14342      fixation_cross    gabor_073 gabor_178 gabor_112 gabor_156    gabor_073_alt gabor_178_alt gabor_112 gabor_156      "1_8_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_073_178_112_156_target_position_1_2_retrieval_position_2"         gabor_circ gabor_133_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_8_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_133_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  119   125   292   292   399   125 11543  2992 14342      fixation_cross    gabor_036 gabor_116 gabor_002 gabor_071    gabor_036_alt gabor_116_alt gabor_002 gabor_071      "1_9_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_036_116_002_071_target_position_1_2_retrieval_position_3"        gabor_circ gabor_circ gabor_142_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_9_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_142_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  134   139   292   292   399   125  9543  2992 12342      fixation_cross    gabor_095 gabor_078 gabor_141 gabor_119    gabor_095_alt gabor_078_alt gabor_141 gabor_119     "1_10_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_095_078_141_119_target_position_1_2_retrieval_position_2"         gabor_circ gabor_078_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_10_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_078_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  147   152   292   292   399   125  9543  2992 12342      fixation_cross    gabor_147 gabor_002 gabor_176 gabor_040    gabor_147 gabor_002 gabor_176_alt gabor_040_alt     "1_11_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_147_002_176_040_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_090_framed    blank blank blank blank    fixation_cross_target_position_3_4    "1_11_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_090_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  160   165   292   292   399   125  9543  2992 14342      fixation_cross    gabor_039 gabor_147 gabor_095 gabor_171    gabor_039 gabor_147 gabor_095_alt gabor_171_alt     "1_12_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_039_147_095_171_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_122_framed    blank blank blank blank    fixation_cross_target_position_3_4    "1_12_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_122_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  174   180   292   292   399   125 11543  2992 14342      fixation_cross    gabor_179 gabor_115 gabor_027 gabor_136    gabor_179_alt gabor_115 gabor_027 gabor_136_alt     "1_13_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_179_115_027_136_target_position_1_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_001_framed    blank blank blank blank    fixation_cross_target_position_1_4    "1_13_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_001_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  189   194   292   292   399   125  9543  2992 12342      fixation_cross    gabor_065 gabor_005 gabor_145 gabor_080    gabor_065_alt gabor_005 gabor_145 gabor_080_alt     "1_14_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_065_005_145_080_target_position_1_4_retrieval_position_1"         gabor_065_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_14_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_065_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_003 gabor_054 gabor_091 gabor_020    gabor_003 gabor_054_alt gabor_091 gabor_020_alt     "1_15_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_003_054_091_020_target_position_2_4_retrieval_position_1"        gabor_003_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_15_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_003_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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