# ATWM1 MRI Experiment
                         
scenario = "ATWM1_Working_Memory_MRI_nonsalient_cued_run1";
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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_133 gabor_153 gabor_110 gabor_075    gabor_133 gabor_153_alt gabor_110_alt gabor_075      "1_1_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_133_153_110_075_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_025_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_1_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_025_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    26   292   292   399   125 11543  2992 14342      fixation_cross    gabor_118 gabor_077 gabor_057 gabor_007    gabor_118_alt gabor_077 gabor_057_alt gabor_007      "1_2_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_118_077_057_007_target_position_2_4_retrieval_position_2"     gabor_circ gabor_028_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_2_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_028_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   35    40   292   292   399   125  9543  2992 12342      fixation_cross    gabor_154 gabor_070 gabor_123 gabor_049    gabor_154 gabor_070_alt gabor_123 gabor_049_alt      "1_3_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_154_070_123_049_target_position_1_3_retrieval_position_1"      gabor_154_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_3_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_154_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   48    53   292   292   399   125  9543  2992 14342      fixation_cross    gabor_052 gabor_128 gabor_157 gabor_179    gabor_052 gabor_128_alt gabor_157 gabor_179_alt      "1_4_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_052_128_157_179_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_157_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_4_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_157_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   62    68   292   292   399   125 11543  2992 12342      fixation_cross    gabor_094 gabor_027 gabor_110 gabor_147    gabor_094 gabor_027 gabor_110_alt gabor_147_alt      "1_5_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_094_027_110_147_target_position_1_2_retrieval_position_3"     gabor_circ gabor_circ gabor_065_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_5_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_065_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   76    82   292   292   399   125 11543  2992 14342      fixation_cross    gabor_077 gabor_035 gabor_167 gabor_010    gabor_077 gabor_035_alt gabor_167 gabor_010_alt      "1_6_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_077_035_167_010_target_position_1_3_retrieval_position_3"     gabor_circ gabor_circ gabor_167_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_6_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_167_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   91    96   292   292   399   125  9543  2992 14342      fixation_cross    gabor_054 gabor_127 gabor_081 gabor_143    gabor_054 gabor_127 gabor_081_alt gabor_143_alt      "1_7_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_054_127_081_143_target_position_1_2_retrieval_position_1"      gabor_054_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_7_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_054_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  105   111   292   292   399   125 11543  2992 14342      fixation_cross    gabor_031 gabor_001 gabor_069 gabor_051    gabor_031_alt gabor_001_alt gabor_069 gabor_051      "1_8_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_031_001_069_051_target_position_3_4_retrieval_position_2"     gabor_circ gabor_001_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_8_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_001_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  120   126   292   292   399   125 11543  2992 14342      fixation_cross    gabor_158 gabor_115 gabor_051 gabor_007    gabor_158_alt gabor_115 gabor_051 gabor_007_alt      "1_9_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_158_115_051_007_target_position_2_3_retrieval_position_2"     gabor_circ gabor_115_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_9_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_115_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  135   140   292   292   399   125  9543  2992 12342      fixation_cross    gabor_157 gabor_099 gabor_125 gabor_049    gabor_157 gabor_099_alt gabor_125_alt gabor_049     "1_10_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_157_099_125_049_target_position_1_4_retrieval_position_1"      gabor_157_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_10_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_157_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  148   154   292   292   399   125 11543  2992 14342      fixation_cross    gabor_178 gabor_091 gabor_151 gabor_063    gabor_178_alt gabor_091 gabor_151_alt gabor_063     "1_11_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_178_091_151_063_target_position_2_4_retrieval_position_2"     gabor_circ gabor_042_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_11_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_042_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  163   169   292   292   399   125 11543  2992 12342      fixation_cross    gabor_162 gabor_119 gabor_078 gabor_054    gabor_162 gabor_119_alt gabor_078_alt gabor_054     "1_12_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_162_119_078_054_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_101_framed    blank blank blank blank    fixation_cross_target_position_1_4    "1_12_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_101_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  177   182   292   292   399   125  9543  2992 12342      fixation_cross    gabor_118 gabor_161 gabor_177 gabor_146    gabor_118_alt gabor_161_alt gabor_177 gabor_146     "1_13_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_118_161_177_146_target_position_3_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_097_framed    blank blank blank blank    fixation_cross_target_position_3_4    "1_13_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_097_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  190   195   292   292   399   125  9543  2992 12342      fixation_cross    gabor_172 gabor_002 gabor_153 gabor_065    gabor_172_alt gabor_002 gabor_153_alt gabor_065     "1_14_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_172_002_153_065_target_position_2_4_retrieval_position_2"      gabor_circ gabor_137_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_14_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_137_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  203   208   292   292   399   125  9543  2992 12342      fixation_cross    gabor_147 gabor_059 gabor_039 gabor_123    gabor_147_alt gabor_059 gabor_039_alt gabor_123     "1_15_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_147_059_039_123_target_position_2_4_retrieval_position_3"      gabor_circ gabor_circ gabor_039_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_15_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_039_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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