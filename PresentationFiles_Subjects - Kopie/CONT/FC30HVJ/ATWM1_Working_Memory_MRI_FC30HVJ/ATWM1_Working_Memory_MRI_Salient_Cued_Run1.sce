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
    6    11   292   292   399   125  9543  2992 12342      fixation_cross    gabor_085 gabor_154 gabor_041 gabor_175    gabor_085_alt gabor_154_alt gabor_041 gabor_175      "1_1_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_085_154_041_175_target_position_1_2_retrieval_position_2"         gabor_circ gabor_154_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_1_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_154_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   19    24   292   292   399   125  9543  2992 12342      fixation_cross    gabor_002 gabor_027 gabor_090 gabor_110    gabor_002 gabor_027 gabor_090_alt gabor_110_alt      "1_2_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_002_027_090_110_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_110_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_2_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_110_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   32    37   292   292   399   125  9543  2992 12342      fixation_cross    gabor_087 gabor_043 gabor_175 gabor_013    gabor_087_alt gabor_043_alt gabor_175 gabor_013      "1_3_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_087_043_175_013_target_position_1_2_retrieval_position_1"         gabor_087_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_3_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_087_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   45    51   292   292   399   125 11543  2992 12342      fixation_cross    gabor_029 gabor_116 gabor_153 gabor_005    gabor_029_alt gabor_116 gabor_153_alt gabor_005      "1_4_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_029_116_153_005_target_position_1_3_retrieval_position_1"        gabor_075_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_4_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_075_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   59    64   292   292   399   125  9543  2992 14342      fixation_cross    gabor_071 gabor_097 gabor_044 gabor_021    gabor_071_alt gabor_097 gabor_044 gabor_021_alt      "1_5_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_071_097_044_021_target_position_1_4_retrieval_position_3"         gabor_circ gabor_circ gabor_044_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_5_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_044_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   73    78   292   292   399   125  9543  2992 14342      fixation_cross    gabor_136 gabor_115 gabor_063 gabor_031    gabor_136_alt gabor_115 gabor_063 gabor_031_alt      "1_6_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_136_115_063_031_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_171_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_6_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_171_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   87    93   292   292   399   125 11543  2992 14342      fixation_cross    gabor_035 gabor_086 gabor_067 gabor_153    gabor_035_alt gabor_086 gabor_067 gabor_153_alt      "1_7_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_035_086_067_153_target_position_1_4_retrieval_position_1"        gabor_173_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_7_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_173_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  102   107   292   292   399   125  9543  2992 14342      fixation_cross    gabor_100 gabor_058 gabor_077 gabor_014    gabor_100_alt gabor_058 gabor_077_alt gabor_014      "1_8_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_100_058_077_014_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_032_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_8_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_032_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  116   122   292   292   399   125 11543  2992 14342      fixation_cross    gabor_019 gabor_145 gabor_036 gabor_100    gabor_019_alt gabor_145 gabor_036 gabor_100_alt      "1_9_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_019_145_036_100_target_position_1_4_retrieval_position_3"        gabor_circ gabor_circ gabor_175_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_9_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_175_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  131   137   292   292   399   125 11543  2992 14342      fixation_cross    gabor_130 gabor_041 gabor_022 gabor_171    gabor_130 gabor_041_alt gabor_022_alt gabor_171     "1_10_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_130_041_022_171_target_position_2_3_retrieval_position_2"        gabor_circ gabor_088_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_10_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_088_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  146   152   292   292   399   125 11543  2992 12342      fixation_cross    gabor_132 gabor_147 gabor_010 gabor_174    gabor_132 gabor_147_alt gabor_010_alt gabor_174     "1_11_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_132_147_010_174_target_position_2_3_retrieval_position_3"        gabor_circ gabor_circ gabor_010_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_11_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_010_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  160   166   292   292   399   125 11543  2992 12342      fixation_cross    gabor_180 gabor_052 gabor_004 gabor_109    gabor_180_alt gabor_052 gabor_004_alt gabor_109     "1_12_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_180_052_004_109_target_position_1_3_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_109_framed    blank blank blank blank    fixation_cross_target_position_1_3    "1_12_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_109_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  174   179   292   292   399   125  9543  2992 12342      fixation_cross    gabor_092 gabor_172 gabor_004 gabor_054    gabor_092_alt gabor_172 gabor_004 gabor_054_alt     "1_13_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_092_172_004_054_target_position_1_4_retrieval_position_1"         gabor_141_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_13_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_141_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  187   192   292   292   399   125  9543  2992 14342      fixation_cross    gabor_118 gabor_053 gabor_036 gabor_087    gabor_118_alt gabor_053 gabor_036_alt gabor_087     "1_14_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_118_053_036_087_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_036_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_14_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_036_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_040 gabor_061 gabor_097 gabor_076    gabor_040 gabor_061 gabor_097_alt gabor_076_alt     "1_15_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_040_061_097_076_target_position_3_4_retrieval_position_3"        gabor_circ gabor_circ gabor_097_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_15_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_097_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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