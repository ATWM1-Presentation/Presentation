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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_089 gabor_062 gabor_145 gabor_004    gabor_089 gabor_062_alt gabor_145 gabor_004_alt      "1_1_Encoding_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_089_062_145_004_target_position_2_4_retrieval_position_2"        gabor_circ gabor_111_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_1_Retrieval_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_111_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    25   292   292   399   125  9543  2992 12342      fixation_cross    gabor_098 gabor_016 gabor_140 gabor_076    gabor_098 gabor_016 gabor_140_alt gabor_076_alt      "1_2_Encoding_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_098_016_140_076_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_076_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_2_Retrieval_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_076_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   33    38   292   292   399   125  9543  2992 12342      fixation_cross    gabor_122 gabor_151 gabor_166 gabor_095    gabor_122_alt gabor_151 gabor_166_alt gabor_095      "1_3_Encoding_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_122_151_166_095_target_position_1_3_retrieval_position_1"         gabor_122_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_3_Retrieval_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_122_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   46    51   292   292   399   125  9543  2992 12342      fixation_cross    gabor_159 gabor_176 gabor_110 gabor_040    gabor_159 gabor_176_alt gabor_110 gabor_040_alt      "1_4_Encoding_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_159_176_110_040_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_086_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_4_Retrieval_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_086_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   59    64   292   292   399   125  9543  2992 12342      fixation_cross    gabor_168 gabor_112 gabor_145 gabor_035    gabor_168_alt gabor_112 gabor_145_alt gabor_035      "1_5_Encoding_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_168_112_145_035_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_145_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_5_Retrieval_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_145_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   72    77   292   292   399   125  9543  2992 14342      fixation_cross    gabor_060 gabor_100 gabor_121 gabor_180    gabor_060 gabor_100_alt gabor_121_alt gabor_180      "1_6_Encoding_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_060_100_121_180_target_position_2_3_retrieval_position_2"         gabor_circ gabor_150_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_6_Retrieval_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_150_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   86    92   292   292   399   125 11543  2992 14342      fixation_cross    gabor_157 gabor_029 gabor_099 gabor_135    gabor_157_alt gabor_029_alt gabor_099 gabor_135      "1_7_Encoding_Working_Memory_MRI_P3_RL_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_157_029_099_135_target_position_1_2_retrieval_position_3"        gabor_circ gabor_circ gabor_049_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_7_Retrieval_Working_Memory_MRI_P3_RL_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_049_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  101   107   292   292   399   125 11543  2992 14342      fixation_cross    gabor_094 gabor_157 gabor_004 gabor_073    gabor_094_alt gabor_157_alt gabor_004 gabor_073      "1_8_Encoding_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_094_157_004_073_target_position_1_2_retrieval_position_2"        gabor_circ gabor_157_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_8_Retrieval_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_157_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  116   121   292   292   399   125  9543  2992 14342      fixation_cross    gabor_084 gabor_143 gabor_030 gabor_105    gabor_084_alt gabor_143 gabor_030 gabor_105_alt      "1_9_Encoding_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_084_143_030_105_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_056_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_9_Retrieval_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_056_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  130   135   292   292   399   125  9543  2992 12342      fixation_cross    gabor_097 gabor_147 gabor_024 gabor_174    gabor_097_alt gabor_147 gabor_024 gabor_174_alt     "1_10_Encoding_Working_Memory_MRI_P3_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_097_147_024_174_target_position_1_4_retrieval_position_2"         gabor_circ gabor_147_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_10_Retrieval_Working_Memory_MRI_P3_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_147_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  143   149   292   292   399   125 11543  2992 12342      fixation_cross    gabor_060 gabor_167 gabor_085 gabor_130    gabor_060_alt gabor_167_alt gabor_085 gabor_130     "1_11_Encoding_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_060_167_085_130_target_position_1_2_retrieval_position_1"        gabor_107_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_11_Retrieval_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_107_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  157   163   292   292   399   125 11543  2992 14342      fixation_cross    gabor_061 gabor_171 gabor_105 gabor_045    gabor_061_alt gabor_171 gabor_105 gabor_045_alt     "1_12_Encoding_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_061_171_105_045_target_position_1_4_retrieval_position_1"        gabor_061_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_12_Retrieval_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_061_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  172   178   292   292   399   125 11543  2992 14342      fixation_cross    gabor_105 gabor_084 gabor_157 gabor_126    gabor_105 gabor_084_alt gabor_157_alt gabor_126     "1_13_Encoding_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_105_084_157_126_target_position_2_3_retrieval_position_2"        gabor_circ gabor_036_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_13_Retrieval_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_036_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  187   193   292   292   399   125 11543  2992 14342      fixation_cross    gabor_065 gabor_151 gabor_174 gabor_093    gabor_065_alt gabor_151_alt gabor_174 gabor_093     "1_14_Encoding_Working_Memory_MRI_P3_RL_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_065_151_174_093_target_position_1_2_retrieval_position_3"        gabor_circ gabor_circ gabor_174_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_14_Retrieval_Working_Memory_MRI_P3_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_174_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_118 gabor_173 gabor_093 gabor_158    gabor_118_alt gabor_173_alt gabor_093 gabor_158     "1_15_Encoding_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_118_173_093_158_target_position_1_2_retrieval_position_2"         gabor_circ gabor_173_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_15_Retrieval_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_173_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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