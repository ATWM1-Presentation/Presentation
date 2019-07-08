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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_164 gabor_179 gabor_089 gabor_048    gabor_164 gabor_179 gabor_089_alt gabor_048_alt      "1_1_Encoding_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_164_179_089_048_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_089_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_1_Retrieval_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_089_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    25   292   292   399   125  9543  2992 12342      fixation_cross    gabor_172 gabor_091 gabor_025 gabor_132    gabor_172_alt gabor_091_alt gabor_025 gabor_132      "1_2_Encoding_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_172_091_025_132_target_position_1_2_retrieval_position_2"         gabor_circ gabor_091_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_2_Retrieval_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_091_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   33    38   292   292   399   125  9543  2992 12342      fixation_cross    gabor_022 gabor_172 gabor_090 gabor_157    gabor_022 gabor_172_alt gabor_090_alt gabor_157      "1_3_Encoding_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_022_172_090_157_target_position_2_3_retrieval_position_3"         gabor_circ gabor_circ gabor_040_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_3_Retrieval_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_040_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   46    51   292   292   399   125  9543  2992 14342      fixation_cross    gabor_116 gabor_139 gabor_088 gabor_003    gabor_116_alt gabor_139 gabor_088 gabor_003_alt      "1_4_Encoding_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_116_139_088_003_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_052_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_4_Retrieval_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_052_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   60    65   292   292   399   125  9543  2992 12342      fixation_cross    gabor_135 gabor_015 gabor_069 gabor_099    gabor_135 gabor_015_alt gabor_069_alt gabor_099      "1_5_Encoding_Working_Memory_MRI_P8_RL_Salient_DoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_135_015_069_099_target_position_2_3_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_053_framed    blank blank blank blank    fixation_cross_target_position_2_3     "1_5_Retrieval_Working_Memory_MRI_P8_RL_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_053_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   73    78   292   292   399   125  9543  2992 14342      fixation_cross    gabor_166 gabor_060 gabor_033 gabor_007    gabor_166 gabor_060 gabor_033_alt gabor_007_alt      "1_6_Encoding_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_166_060_033_007_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_007_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_6_Retrieval_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_007_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   87    93   292   292   399   125 11543  2992 14342      fixation_cross    gabor_110 gabor_148 gabor_133 gabor_166    gabor_110 gabor_148_alt gabor_133 gabor_166_alt      "1_7_Encoding_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_110_148_133_166_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_026_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_7_Retrieval_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_026_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  102   108   292   292   399   125 11543  2992 12342      fixation_cross    gabor_037 gabor_002 gabor_017 gabor_161    gabor_037_alt gabor_002_alt gabor_017 gabor_161      "1_8_Encoding_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_037_002_017_161_target_position_1_2_retrieval_position_1"        gabor_086_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_8_Retrieval_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_086_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  116   122   292   292   399   125 11543  2992 14342      fixation_cross    gabor_073 gabor_108 gabor_092 gabor_138    gabor_073_alt gabor_108_alt gabor_092 gabor_138      "1_9_Encoding_Working_Memory_MRI_P8_RL_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_073_108_092_138_target_position_1_2_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_138_framed    blank blank blank blank    fixation_cross_target_position_1_2     "1_9_Retrieval_Working_Memory_MRI_P8_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_138_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  131   136   292   292   399   125  9543  2992 14342      fixation_cross    gabor_002 gabor_027 gabor_160 gabor_178    gabor_002 gabor_027 gabor_160_alt gabor_178_alt     "1_10_Encoding_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_002_027_160_178_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_160_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_10_Retrieval_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_160_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  145   151   292   292   399   125 11543  2992 14342      fixation_cross    gabor_050 gabor_005 gabor_031 gabor_070    gabor_050_alt gabor_005_alt gabor_031 gabor_070     "1_11_Encoding_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_050_005_031_070_target_position_1_2_retrieval_position_2"        gabor_circ gabor_140_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_11_Retrieval_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_140_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  160   166   292   292   399   125 11543  2992 12342      fixation_cross    gabor_169 gabor_035 gabor_056 gabor_145    gabor_169 gabor_035 gabor_056_alt gabor_145_alt     "1_12_Encoding_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_169_035_056_145_target_position_3_4_retrieval_position_3"        gabor_circ gabor_circ gabor_009_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_12_Retrieval_Working_Memory_MRI_P8_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_009_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  174   180   292   292   399   125 11543  2992 12342      fixation_cross    gabor_136 gabor_004 gabor_050 gabor_070    gabor_136_alt gabor_004_alt gabor_050 gabor_070     "1_13_Encoding_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_136_004_050_070_target_position_1_2_retrieval_position_1"        gabor_136_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_13_Retrieval_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_136_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   193   292   292   399   125  9543  2992 12342      fixation_cross    gabor_087 gabor_017 gabor_127 gabor_175    gabor_087_alt gabor_017 gabor_127_alt gabor_175     "1_14_Encoding_Working_Memory_MRI_P8_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_087_017_127_175_target_position_1_3_retrieval_position_2"         gabor_circ gabor_017_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_14_Retrieval_Working_Memory_MRI_P8_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_017_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_006 gabor_161 gabor_040 gabor_129    gabor_006_alt gabor_161 gabor_040 gabor_129_alt     "1_15_Encoding_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_006_161_040_129_target_position_1_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_129_framed    blank blank blank blank    fixation_cross_target_position_1_4    "1_15_Retrieval_Working_Memory_MRI_P8_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_129_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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