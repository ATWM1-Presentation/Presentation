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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_043 gabor_083 gabor_159 gabor_008    gabor_043 gabor_083_alt gabor_159 gabor_008_alt      "1_1_Encoding_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_043_083_159_008_target_position_2_4_retrieval_position_2"         gabor_circ gabor_083_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_1_Retrieval_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_083_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    26   292   292   399   125 11543  2992 12342      fixation_cross    gabor_129 gabor_176 gabor_001 gabor_056    gabor_129 gabor_176_alt gabor_001 gabor_056_alt      "1_2_Encoding_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_129_176_001_056_target_position_2_4_retrieval_position_2"        gabor_circ gabor_040_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_2_Retrieval_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_040_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   34    39   292   292   399   125  9543  2992 14342      fixation_cross    gabor_148 gabor_178 gabor_116 gabor_026    gabor_148 gabor_178_alt gabor_116_alt gabor_026      "1_3_Encoding_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_148_178_116_026_target_position_2_3_retrieval_position_2"         gabor_circ gabor_178_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_3_Retrieval_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_178_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   48    54   292   292   399   125 11543  2992 14342      fixation_cross    gabor_011 gabor_071 gabor_145 gabor_089    gabor_011_alt gabor_071_alt gabor_145 gabor_089      "1_4_Encoding_Working_Memory_MRI_P8_RL_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_011_071_145_089_target_position_1_2_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_039_framed    blank blank blank blank    fixation_cross_target_position_1_2     "1_4_Retrieval_Working_Memory_MRI_P8_RL_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_039_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   63    69   292   292   399   125 11543  2992 14342      fixation_cross    gabor_029 gabor_168 gabor_009 gabor_094    gabor_029 gabor_168_alt gabor_009_alt gabor_094      "1_5_Encoding_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_029_168_009_094_target_position_2_3_retrieval_position_2"        gabor_circ gabor_168_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_5_Retrieval_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_168_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   78    83   292   292   399   125  9543  2992 12342      fixation_cross    gabor_145 gabor_056 gabor_015 gabor_037    gabor_145 gabor_056_alt gabor_015 gabor_037_alt      "1_6_Encoding_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_145_056_015_037_target_position_2_4_retrieval_position_2"         gabor_circ gabor_103_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_6_Retrieval_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_103_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   91    97   292   292   399   125 11543  2992 12342      fixation_cross    gabor_027 gabor_072 gabor_161 gabor_143    gabor_027 gabor_072_alt gabor_161_alt gabor_143      "1_7_Encoding_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_027_072_161_143_target_position_2_3_retrieval_position_2"        gabor_circ gabor_117_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_7_Retrieval_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_117_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  105   110   292   292   399   125  9543  2992 12342      fixation_cross    gabor_039 gabor_024 gabor_064 gabor_084    gabor_039_alt gabor_024 gabor_064 gabor_084_alt      "1_8_Encoding_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_039_024_064_084_target_position_1_4_retrieval_position_1"         gabor_039_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_8_Retrieval_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_039_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  118   124   292   292   399   125 11543  2992 12342      fixation_cross    gabor_054 gabor_001 gabor_074 gabor_117    gabor_054_alt gabor_001_alt gabor_074 gabor_117      "1_9_Encoding_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_054_001_074_117_target_position_1_2_retrieval_position_2"        gabor_circ gabor_138_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_9_Retrieval_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_138_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  132   137   292   292   399   125  9543  2992 14342      fixation_cross    gabor_157 gabor_093 gabor_047 gabor_125    gabor_157 gabor_093_alt gabor_047 gabor_125_alt     "1_10_Encoding_Working_Memory_MRI_P8_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_157_093_047_125_target_position_2_4_retrieval_position_1"         gabor_157_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_10_Retrieval_Working_Memory_MRI_P8_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_157_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  146   152   292   292   399   125 11543  2992 12342      fixation_cross    gabor_007 gabor_157 gabor_086 gabor_129    gabor_007_alt gabor_157 gabor_086_alt gabor_129     "1_11_Encoding_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_007_157_086_129_target_position_1_3_retrieval_position_3"        gabor_circ gabor_circ gabor_041_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_11_Retrieval_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_041_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  160   165   292   292   399   125  9543  2992 14342      fixation_cross    gabor_179 gabor_016 gabor_001 gabor_063    gabor_179 gabor_016 gabor_001_alt gabor_063_alt     "1_12_Encoding_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_179_016_001_063_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_047_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_12_Retrieval_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_047_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  174   179   292   292   399   125  9543  2992 12342      fixation_cross    gabor_147 gabor_176 gabor_030 gabor_102    gabor_147_alt gabor_176_alt gabor_030 gabor_102     "1_13_Encoding_Working_Memory_MRI_P8_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_147_176_030_102_target_position_1_2_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_102_framed    blank blank blank blank    fixation_cross_target_position_1_2    "1_13_Retrieval_Working_Memory_MRI_P8_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_102_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  187   192   292   292   399   125  9543  2992 14342      fixation_cross    gabor_037 gabor_074 gabor_104 gabor_018    gabor_037 gabor_074 gabor_104_alt gabor_018_alt     "1_14_Encoding_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_037_074_104_018_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_018_framed    blank blank blank blank    fixation_cross_target_position_3_4    "1_14_Retrieval_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_018_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_110 gabor_001 gabor_061 gabor_177    gabor_110 gabor_001 gabor_061_alt gabor_177_alt     "1_15_Encoding_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_110_001_061_177_target_position_3_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_177_framed    blank blank blank blank    fixation_cross_target_position_3_4    "1_15_Retrieval_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_177_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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