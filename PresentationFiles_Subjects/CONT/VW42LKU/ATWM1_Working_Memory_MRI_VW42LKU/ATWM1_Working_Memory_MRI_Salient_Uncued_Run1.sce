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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_115 gabor_134 gabor_070 gabor_098    gabor_115 gabor_134 gabor_070_alt gabor_098_alt      "1_1_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_115_134_070_098_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_049_framed    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_049_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   20    26   292   292   399   125 11543  2992 14342      fixation_cross    gabor_051 gabor_175 gabor_159 gabor_093    gabor_051 gabor_175_alt gabor_159_alt gabor_093      "1_2_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_051_175_159_093_target_position_2_3_retrieval_position_2"        gabor_circ gabor_175_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_175_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   35    40   292   292   399   125  9543  2992 14342      fixation_cross    gabor_098 gabor_031 gabor_059 gabor_121    gabor_098_alt gabor_031_alt gabor_059 gabor_121      "1_3_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_098_031_059_121_target_position_1_2_retrieval_position_2"         gabor_circ gabor_076_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_076_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   49    54   292   292   399   125  9543  2992 14342      fixation_cross    gabor_018 gabor_123 gabor_045 gabor_092    gabor_018 gabor_123_alt gabor_045_alt gabor_092      "1_4_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_018_123_045_092_target_position_2_3_retrieval_position_2"         gabor_circ gabor_123_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_123_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   63    69   292   292   399   125 11543  2992 14342      fixation_cross    gabor_146 gabor_040 gabor_176 gabor_128    gabor_146 gabor_040_alt gabor_176_alt gabor_128      "1_5_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_146_040_176_128_target_position_2_3_retrieval_position_1"        gabor_146_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_146_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   78    84   292   292   399   125 11543  2992 14342      fixation_cross    gabor_016 gabor_049 gabor_139 gabor_069    gabor_016 gabor_049_alt gabor_139_alt gabor_069      "1_6_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_016_049_139_069_target_position_2_3_retrieval_position_3"        gabor_circ gabor_circ gabor_094_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_094_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   93    99   292   292   399   125 11543  2992 12342      fixation_cross    gabor_021 gabor_083 gabor_105 gabor_051    gabor_021_alt gabor_083 gabor_105 gabor_051_alt      "1_7_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_021_083_105_051_target_position_1_4_retrieval_position_1"        gabor_021_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_021_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  107   112   292   292   399   125  9543  2992 12342      fixation_cross    gabor_077 gabor_114 gabor_004 gabor_035    gabor_077 gabor_114_alt gabor_004_alt gabor_035      "1_8_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_077_114_004_035_target_position_2_3_retrieval_position_2"         gabor_circ gabor_162_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_162_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  120   125   292   292   399   125  9543  2992 12342      fixation_cross    gabor_139 gabor_120 gabor_082 gabor_031    gabor_139_alt gabor_120 gabor_082_alt gabor_031      "1_9_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_139_120_082_031_target_position_1_3_retrieval_position_1"         gabor_139_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_139_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  133   139   292   292   399   125 11543  2992 14342      fixation_cross    gabor_018 gabor_042 gabor_092 gabor_152    gabor_018_alt gabor_042_alt gabor_092 gabor_152     "1_10_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_018_042_092_152_target_position_1_2_retrieval_position_2"        gabor_circ gabor_178_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_178_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  148   153   292   292   399   125  9543  2992 14342      fixation_cross    gabor_058 gabor_180 gabor_122 gabor_013    gabor_058 gabor_180_alt gabor_122_alt gabor_013     "1_11_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_058_180_122_013_target_position_2_3_retrieval_position_1"         gabor_103_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_103_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  162   167   292   292   399   125  9543  2992 12342      fixation_cross    gabor_014 gabor_171 gabor_035 gabor_122    gabor_014_alt gabor_171 gabor_035_alt gabor_122     "1_12_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_014_171_035_122_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_035_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_035_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  175   181   292   292   399   125 11543  2992 12342      fixation_cross    gabor_124 gabor_081 gabor_034 gabor_139    gabor_124 gabor_081_alt gabor_034 gabor_139_alt     "1_13_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_124_081_034_139_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_139_framed    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_139_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  189   194   292   292   399   125  9543  2992 12342      fixation_cross    gabor_125 gabor_039 gabor_091 gabor_059    gabor_125 gabor_039_alt gabor_091 gabor_059_alt     "1_14_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_125_039_091_059_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_014_framed    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_014_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_042 gabor_151 gabor_094 gabor_120    gabor_042 gabor_151 gabor_094_alt gabor_120_alt     "1_15_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_042_151_094_120_target_position_3_4_retrieval_position_2"        gabor_circ gabor_151_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_151_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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