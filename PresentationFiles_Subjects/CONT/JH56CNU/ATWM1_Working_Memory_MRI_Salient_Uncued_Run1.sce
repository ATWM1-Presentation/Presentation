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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_134 gabor_005 gabor_056 gabor_029    gabor_134_alt gabor_005_alt gabor_056 gabor_029      "1_1_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_134_005_056_029_target_position_1_2_retrieval_position_1"        gabor_087_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_087_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   20    26   292   292   399   125 11543  2992 12342      fixation_cross    gabor_141 gabor_108 gabor_167 gabor_055    gabor_141_alt gabor_108 gabor_167 gabor_055_alt      "1_2_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_141_108_167_055_target_position_1_4_retrieval_position_1"        gabor_141_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_141_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   34    40   292   292   399   125 11543  2992 12342      fixation_cross    gabor_145 gabor_021 gabor_055 gabor_175    gabor_145 gabor_021 gabor_055_alt gabor_175_alt      "1_3_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_145_021_055_175_target_position_3_4_retrieval_position_3"        gabor_circ gabor_circ gabor_055_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_055_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   48    53   292   292   399   125  9543  2992 12342      fixation_cross    gabor_147 gabor_034 gabor_093 gabor_122    gabor_147 gabor_034_alt gabor_093_alt gabor_122      "1_4_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_147_034_093_122_target_position_2_3_retrieval_position_2"         gabor_circ gabor_034_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_034_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   61    66   292   292   399   125  9543  2992 14342      fixation_cross    gabor_032 gabor_178 gabor_049 gabor_003    gabor_032_alt gabor_178 gabor_049 gabor_003_alt      "1_5_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_032_178_049_003_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_139_framed    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_139_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   75    80   292   292   399   125  9543  2992 12342      fixation_cross    gabor_142 gabor_018 gabor_105 gabor_171    gabor_142 gabor_018 gabor_105_alt gabor_171_alt      "1_6_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_142_018_105_171_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_060_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_060_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   88    94   292   292   399   125 11543  2992 14342      fixation_cross    gabor_003 gabor_080 gabor_169 gabor_113    gabor_003_alt gabor_080 gabor_169_alt gabor_113      "1_7_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_003_080_169_113_target_position_1_3_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_113_framed    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_113_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  103   108   292   292   399   125  9543  2992 14342      fixation_cross    gabor_130 gabor_070 gabor_021 gabor_099    gabor_130_alt gabor_070 gabor_021 gabor_099_alt      "1_8_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_130_070_021_099_target_position_1_4_retrieval_position_1"         gabor_130_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_130_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  117   122   292   292   399   125  9543  2992 14342      fixation_cross    gabor_040 gabor_128 gabor_166 gabor_108    gabor_040 gabor_128 gabor_166_alt gabor_108_alt      "1_9_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_040_128_166_108_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_108_framed    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_108_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  131   137   292   292   399   125 11543  2992 12342      fixation_cross    gabor_159 gabor_032 gabor_016 gabor_105    gabor_159_alt gabor_032 gabor_016 gabor_105_alt     "1_10_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_159_032_016_105_target_position_1_4_retrieval_position_2"        gabor_circ gabor_081_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_081_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  145   150   292   292   399   125  9543  2992 14342      fixation_cross    gabor_019 gabor_073 gabor_105 gabor_142    gabor_019_alt gabor_073 gabor_105_alt gabor_142     "1_11_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_019_073_105_142_target_position_1_3_retrieval_position_1"         gabor_158_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_158_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  159   164   292   292   399   125  9543  2992 14342      fixation_cross    gabor_009 gabor_139 gabor_079 gabor_050    gabor_009_alt gabor_139 gabor_079 gabor_050_alt     "1_12_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_009_139_079_050_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_050_framed    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_050_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  173   179   292   292   399   125 11543  2992 12342      fixation_cross    gabor_003 gabor_062 gabor_125 gabor_167    gabor_003 gabor_062 gabor_125_alt gabor_167_alt     "1_13_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_003_062_125_167_target_position_3_4_retrieval_position_1"        gabor_003_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_003_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  187   193   292   292   399   125 11543  2992 14342      fixation_cross    gabor_015 gabor_164 gabor_090 gabor_125    gabor_015 gabor_164_alt gabor_090_alt gabor_125     "1_14_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_015_164_090_125_target_position_2_3_retrieval_position_3"        gabor_circ gabor_circ gabor_043_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_043_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_074 gabor_027 gabor_090 gabor_054    gabor_074_alt gabor_027 gabor_090 gabor_054_alt     "1_15_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_074_027_090_054_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_006_framed    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_006_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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