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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_099 gabor_071 gabor_041 gabor_021    gabor_099_alt gabor_071 gabor_041_alt gabor_021      "1_1_Encoding_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_099_071_041_021_target_position_1_3_retrieval_position_1"         gabor_147_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_147_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    25   292   292   399   125  9543  2992 12342      fixation_cross    gabor_173 gabor_027 gabor_067 gabor_139    gabor_173 gabor_027 gabor_067_alt gabor_139_alt      "1_2_Encoding_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_173_027_067_139_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_139_framed    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_139_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   33    38   292   292   399   125  9543  2992 14342      fixation_cross    gabor_136 gabor_102 gabor_030 gabor_164    gabor_136_alt gabor_102 gabor_030 gabor_164_alt      "1_3_Encoding_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_136_102_030_164_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_164_framed    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_164_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   47    52   292   292   399   125  9543  2992 14342      fixation_cross    gabor_081 gabor_004 gabor_021 gabor_111    gabor_081_alt gabor_004 gabor_021_alt gabor_111      "1_4_Encoding_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_081_004_021_111_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_157_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_157_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   61    67   292   292   399   125 11543  2992 14342      fixation_cross    gabor_044 gabor_132 gabor_153 gabor_106    gabor_044 gabor_132_alt gabor_153 gabor_106_alt      "1_5_Encoding_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_044_132_153_106_target_position_2_4_retrieval_position_2"        gabor_circ gabor_132_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_132_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   76    82   292   292   399   125 11543  2992 12342      fixation_cross    gabor_091 gabor_055 gabor_008 gabor_161    gabor_091 gabor_055_alt gabor_008_alt gabor_161      "1_6_Encoding_Working_Memory_MRI_P1_RL_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_091_055_008_161_target_position_2_3_retrieval_position_1"        gabor_091_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P1_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_091_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   90    96   292   292   399   125 11543  2992 12342      fixation_cross    gabor_092 gabor_172 gabor_029 gabor_113    gabor_092_alt gabor_172 gabor_029 gabor_113_alt      "1_7_Encoding_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_092_172_029_113_target_position_1_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_065_framed    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_065_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  104   109   292   292   399   125  9543  2992 12342      fixation_cross    gabor_048 gabor_155 gabor_107 gabor_179    gabor_048 gabor_155_alt gabor_107_alt gabor_179      "1_8_Encoding_Working_Memory_MRI_P1_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_048_155_107_179_target_position_2_3_retrieval_position_1"         gabor_048_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P1_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_048_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  117   123   292   292   399   125 11543  2992 12342      fixation_cross    gabor_095 gabor_036 gabor_159 gabor_080    gabor_095 gabor_036_alt gabor_159 gabor_080_alt      "1_9_Encoding_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_095_036_159_080_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_080_framed    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_080_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  131   137   292   292   399   125 11543  2992 14342      fixation_cross    gabor_103 gabor_081 gabor_142 gabor_058    gabor_103 gabor_081_alt gabor_142 gabor_058_alt     "1_10_Encoding_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_103_081_142_058_target_position_2_4_retrieval_position_2"        gabor_circ gabor_081_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_081_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  146   151   292   292   399   125  9543  2992 12342      fixation_cross    gabor_118 gabor_169 gabor_060 gabor_103    gabor_118_alt gabor_169_alt gabor_060 gabor_103     "1_11_Encoding_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_118_169_060_103_target_position_1_2_retrieval_position_2"         gabor_circ gabor_030_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_030_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  159   165   292   292   399   125 11543  2992 12342      fixation_cross    gabor_177 gabor_104 gabor_038 gabor_146    gabor_177 gabor_104_alt gabor_038_alt gabor_146     "1_12_Encoding_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_177_104_038_146_target_position_2_3_retrieval_position_3"        gabor_circ gabor_circ gabor_088_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_088_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  173   178   292   292   399   125  9543  2992 14342      fixation_cross    gabor_007 gabor_113 gabor_097 gabor_043    gabor_007 gabor_113_alt gabor_097_alt gabor_043     "1_13_Encoding_Working_Memory_MRI_P1_RL_Salient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_007_113_097_043_target_position_2_3_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_178_framed    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P1_RL_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_178_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  187   192   292   292   399   125  9543  2992 14342      fixation_cross    gabor_126 gabor_163 gabor_082 gabor_055    gabor_126 gabor_163 gabor_082_alt gabor_055_alt     "1_14_Encoding_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_126_163_082_055_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_103_framed    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P1_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_103_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_002 gabor_149 gabor_073 gabor_028    gabor_002 gabor_149_alt gabor_073_alt gabor_028     "1_15_Encoding_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_002_149_073_028_target_position_2_3_retrieval_position_3"        gabor_circ gabor_circ gabor_073_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P1_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_073_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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