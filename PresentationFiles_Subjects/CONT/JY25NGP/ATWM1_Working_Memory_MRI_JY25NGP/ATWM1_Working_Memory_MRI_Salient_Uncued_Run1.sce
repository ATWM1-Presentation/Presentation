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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_167 gabor_107 gabor_147 gabor_040    gabor_167 gabor_107_alt gabor_147 gabor_040_alt      "1_1_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_167_107_147_040_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_090_framed    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_090_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    25   292   292   399   125  9543  2992 14342      fixation_cross    gabor_151 gabor_121 gabor_088 gabor_073    gabor_151 gabor_121 gabor_088_alt gabor_073_alt      "1_2_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_151_121_088_073_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_088_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_088_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   34    39   292   292   399   125  9543  2992 14342      fixation_cross    gabor_142 gabor_125 gabor_164 gabor_080    gabor_142_alt gabor_125_alt gabor_164 gabor_080      "1_3_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_142_125_164_080_target_position_1_2_retrieval_position_1"         gabor_003_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_003_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   48    53   292   292   399   125  9543  2992 14342      fixation_cross    gabor_152 gabor_004 gabor_134 gabor_073    gabor_152 gabor_004 gabor_134_alt gabor_073_alt      "1_4_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_152_004_134_073_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_134_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_134_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   62    67   292   292   399   125  9543  2992 14342      fixation_cross    gabor_033 gabor_089 gabor_003 gabor_057    gabor_033 gabor_089_alt gabor_003 gabor_057_alt      "1_5_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_033_089_003_057_target_position_2_4_retrieval_position_3"         gabor_circ gabor_circ gabor_140_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_140_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   76    82   292   292   399   125 11543  2992 12342      fixation_cross    gabor_134 gabor_179 gabor_025 gabor_163    gabor_134_alt gabor_179 gabor_025 gabor_163_alt      "1_6_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_134_179_025_163_target_position_1_4_retrieval_position_1"        gabor_134_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_134_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   90    96   292   292   399   125 11543  2992 14342      fixation_cross    gabor_099 gabor_036 gabor_059 gabor_174    gabor_099_alt gabor_036_alt gabor_059 gabor_174      "1_7_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_099_036_059_174_target_position_1_2_retrieval_position_1"        gabor_099_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_099_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  105   111   292   292   399   125 11543  2992 12342      fixation_cross    gabor_117 gabor_073 gabor_091 gabor_046    gabor_117_alt gabor_073 gabor_091 gabor_046_alt      "1_8_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_117_073_091_046_target_position_1_4_retrieval_position_2"        gabor_circ gabor_073_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_073_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  119   124   292   292   399   125  9543  2992 12342      fixation_cross    gabor_062 gabor_125 gabor_172 gabor_098    gabor_062_alt gabor_125 gabor_172_alt gabor_098      "1_9_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_062_125_172_098_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_037_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_037_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  132   138   292   292   399   125 11543  2992 12342      fixation_cross    gabor_081 gabor_033 gabor_001 gabor_113    gabor_081_alt gabor_033 gabor_001 gabor_113_alt     "1_10_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_081_033_001_113_target_position_1_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_113_framed    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_113_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  146   152   292   292   399   125 11543  2992 14342      fixation_cross    gabor_062 gabor_106 gabor_085 gabor_018    gabor_062_alt gabor_106_alt gabor_085 gabor_018     "1_11_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_062_106_085_018_target_position_1_2_retrieval_position_2"        gabor_circ gabor_152_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_152_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  161   167   292   292   399   125 11543  2992 14342      fixation_cross    gabor_153 gabor_017 gabor_126 gabor_036    gabor_153 gabor_017_alt gabor_126 gabor_036_alt     "1_12_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_153_017_126_036_target_position_2_4_retrieval_position_1"        gabor_153_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_153_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  176   181   292   292   399   125  9543  2992 12342      fixation_cross    gabor_099 gabor_117 gabor_160 gabor_075    gabor_099_alt gabor_117 gabor_160 gabor_075_alt     "1_13_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_099_117_160_075_target_position_1_4_retrieval_position_1"         gabor_054_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_054_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  189   195   292   292   399   125 11543  2992 12342      fixation_cross    gabor_119 gabor_153 gabor_170 gabor_096    gabor_119 gabor_153_alt gabor_170_alt gabor_096     "1_14_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_119_153_170_096_target_position_2_3_retrieval_position_3"        gabor_circ gabor_circ gabor_033_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_033_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  203   208   292   292   399   125  9543  2992 12342      fixation_cross    gabor_142 gabor_006 gabor_180 gabor_070    gabor_142_alt gabor_006 gabor_180_alt gabor_070     "1_15_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_142_006_180_070_target_position_1_3_retrieval_position_1"         gabor_142_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_142_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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