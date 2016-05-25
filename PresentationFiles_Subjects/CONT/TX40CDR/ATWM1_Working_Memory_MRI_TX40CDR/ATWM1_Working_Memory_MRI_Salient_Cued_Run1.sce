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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_091 gabor_110 gabor_136 gabor_156    gabor_091 gabor_110 gabor_136_alt gabor_156_alt      "1_1_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_091_110_136_156_target_position_3_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_021_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_1_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_021_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   20    26   292   292   399   125 11543  2992 14342      fixation_cross    gabor_057 gabor_144 gabor_021 gabor_178    gabor_057_alt gabor_144_alt gabor_021 gabor_178      "1_2_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_057_144_021_178_target_position_1_2_retrieval_position_2"        gabor_circ gabor_144_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_2_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_144_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   35    40   292   292   399   125  9543  2992 14342      fixation_cross    gabor_159 gabor_105 gabor_139 gabor_070    gabor_159_alt gabor_105 gabor_139_alt gabor_070      "1_3_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_159_105_139_070_target_position_1_3_retrieval_position_1"         gabor_159_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_3_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_159_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   49    54   292   292   399   125  9543  2992 14342      fixation_cross    gabor_091 gabor_009 gabor_075 gabor_125    gabor_091_alt gabor_009 gabor_075 gabor_125_alt      "1_4_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_091_009_075_125_target_position_1_4_retrieval_position_1"         gabor_141_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_4_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_141_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   63    68   292   292   399   125  9543  2992 12342      fixation_cross    gabor_077 gabor_138 gabor_167 gabor_007    gabor_077 gabor_138 gabor_167_alt gabor_007_alt      "1_5_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_077_138_167_007_target_position_3_4_retrieval_position_1"         gabor_029_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_5_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_029_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   76    81   292   292   399   125  9543  2992 12342      fixation_cross    gabor_157 gabor_037 gabor_003 gabor_120    gabor_157_alt gabor_037 gabor_003 gabor_120_alt      "1_6_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_157_037_003_120_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_120_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_6_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_120_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   89    95   292   292   399   125 11543  2992 12342      fixation_cross    gabor_007 gabor_124 gabor_046 gabor_174    gabor_007_alt gabor_124 gabor_046_alt gabor_174      "1_7_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_007_124_046_174_target_position_1_3_retrieval_position_3"        gabor_circ gabor_circ gabor_046_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_7_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_046_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  103   109   292   292   399   125 11543  2992 12342      fixation_cross    gabor_099 gabor_062 gabor_082 gabor_121    gabor_099_alt gabor_062 gabor_082_alt gabor_121      "1_8_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_099_062_082_121_target_position_1_3_retrieval_position_2"        gabor_circ gabor_062_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_8_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_062_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  117   122   292   292   399   125  9543  2992 14342      fixation_cross    gabor_096 gabor_135 gabor_154 gabor_074    gabor_096 gabor_135_alt gabor_154 gabor_074_alt      "1_9_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_096_135_154_074_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_029_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_9_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_029_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  131   136   292   292   399   125  9543  2992 14342      fixation_cross    gabor_020 gabor_126 gabor_177 gabor_100    gabor_020_alt gabor_126 gabor_177_alt gabor_100     "1_10_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_020_126_177_100_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_037_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_10_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_037_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  145   151   292   292   399   125 11543  2992 12342      fixation_cross    gabor_157 gabor_012 gabor_067 gabor_179    gabor_157 gabor_012_alt gabor_067 gabor_179_alt     "1_11_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_157_012_067_179_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_179_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_11_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_179_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  159   164   292   292   399   125  9543  2992 14342      fixation_cross    gabor_158 gabor_019 gabor_177 gabor_070    gabor_158 gabor_019_alt gabor_177_alt gabor_070     "1_12_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_158_019_177_070_target_position_2_3_retrieval_position_3"         gabor_circ gabor_circ gabor_131_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_12_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_131_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  173   179   292   292   399   125 11543  2992 12342      fixation_cross    gabor_008 gabor_152 gabor_087 gabor_042    gabor_008_alt gabor_152 gabor_087_alt gabor_042     "1_13_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_008_152_087_042_target_position_1_3_retrieval_position_3"        gabor_circ gabor_circ gabor_132_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_13_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_132_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  187   193   292   292   399   125 11543  2992 14342      fixation_cross    gabor_028 gabor_180 gabor_117 gabor_009    gabor_028 gabor_180_alt gabor_117 gabor_009_alt     "1_14_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_028_180_117_009_target_position_2_4_retrieval_position_2"        gabor_circ gabor_180_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_14_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_180_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_179 gabor_065 gabor_138 gabor_096    gabor_179_alt gabor_065_alt gabor_138 gabor_096     "1_15_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_179_065_138_096_target_position_1_2_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_096_framed    blank blank blank blank    fixation_cross_target_position_1_2    "1_15_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_096_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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