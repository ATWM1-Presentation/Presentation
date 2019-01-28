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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_177 gabor_011 gabor_092 gabor_071    gabor_177_alt gabor_011 gabor_092_alt gabor_071      "1_1_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_177_011_092_071_target_position_1_3_retrieval_position_3"        gabor_circ gabor_circ gabor_042_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_042_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   20    26   292   292   399   125 11543  2992 12342      fixation_cross    gabor_085 gabor_152 gabor_018 gabor_001    gabor_085 gabor_152_alt gabor_018_alt gabor_001      "1_2_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_085_152_018_001_target_position_2_3_retrieval_position_3"        gabor_circ gabor_circ gabor_018_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_018_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   34    39   292   292   399   125  9543  2992 14342      fixation_cross    gabor_004 gabor_090 gabor_130 gabor_071    gabor_004 gabor_090_alt gabor_130 gabor_071_alt      "1_3_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_004_090_130_071_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_022_framed    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_022_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   48    53   292   292   399   125  9543  2992 12342      fixation_cross    gabor_126 gabor_097 gabor_169 gabor_036    gabor_126_alt gabor_097 gabor_169 gabor_036_alt      "1_4_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_126_097_169_036_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_036_framed    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_036_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   61    66   292   292   399   125  9543  2992 12342      fixation_cross    gabor_158 gabor_045 gabor_018 gabor_002    gabor_158 gabor_045_alt gabor_018 gabor_002_alt      "1_5_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_158_045_018_002_target_position_2_4_retrieval_position_2"         gabor_circ gabor_091_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_091_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   74    79   292   292   399   125  9543  2992 14342      fixation_cross    gabor_072 gabor_049 gabor_180 gabor_028    gabor_072_alt gabor_049 gabor_180_alt gabor_028      "1_6_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_072_049_180_028_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_134_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_134_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   88    94   292   292   399   125 11543  2992 14342      fixation_cross    gabor_138 gabor_114 gabor_156 gabor_006    gabor_138_alt gabor_114 gabor_156 gabor_006_alt      "1_7_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_138_114_156_006_target_position_1_4_retrieval_position_2"        gabor_circ gabor_068_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_068_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  103   109   292   292   399   125 11543  2992 14342      fixation_cross    gabor_179 gabor_108 gabor_136 gabor_069    gabor_179 gabor_108_alt gabor_136_alt gabor_069      "1_8_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_179_108_136_069_target_position_2_3_retrieval_position_2"        gabor_circ gabor_108_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_108_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  118   123   292   292   399   125  9543  2992 14342      fixation_cross    gabor_053 gabor_028 gabor_110 gabor_164    gabor_053 gabor_028_alt gabor_110 gabor_164_alt      "1_9_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_053_028_110_164_target_position_2_4_retrieval_position_2"         gabor_circ gabor_078_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_078_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  132   138   292   292   399   125 11543  2992 14342      fixation_cross    gabor_177 gabor_088 gabor_116 gabor_144    gabor_177 gabor_088 gabor_116_alt gabor_144_alt     "1_10_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_177_088_116_144_target_position_3_4_retrieval_position_1"        gabor_177_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_177_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  147   153   292   292   399   125 11543  2992 12342      fixation_cross    gabor_001 gabor_142 gabor_091 gabor_120    gabor_001_alt gabor_142 gabor_091 gabor_120_alt     "1_11_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_001_142_091_120_target_position_1_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_120_framed    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_120_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  161   166   292   292   399   125  9543  2992 12342      fixation_cross    gabor_149 gabor_035 gabor_017 gabor_105    gabor_149 gabor_035 gabor_017_alt gabor_105_alt     "1_12_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_149_035_017_105_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_105_framed    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_105_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  174   179   292   292   399   125  9543  2992 14342      fixation_cross    gabor_067 gabor_112 gabor_130 gabor_180    gabor_067 gabor_112_alt gabor_130_alt gabor_180     "1_13_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_067_112_130_180_target_position_2_3_retrieval_position_2"         gabor_circ gabor_157_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_157_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  188   194   292   292   399   125 11543  2992 14342      fixation_cross    gabor_135 gabor_062 gabor_102 gabor_046    gabor_135_alt gabor_062 gabor_102_alt gabor_046     "1_14_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_135_062_102_046_target_position_1_3_retrieval_position_3"        gabor_circ gabor_circ gabor_102_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_102_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  203   208   292   292   399   125  9543  2992 12342      fixation_cross    gabor_078 gabor_033 gabor_018 gabor_105    gabor_078_alt gabor_033 gabor_018_alt gabor_105     "1_15_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_078_033_018_105_target_position_1_3_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_105_framed    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_105_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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