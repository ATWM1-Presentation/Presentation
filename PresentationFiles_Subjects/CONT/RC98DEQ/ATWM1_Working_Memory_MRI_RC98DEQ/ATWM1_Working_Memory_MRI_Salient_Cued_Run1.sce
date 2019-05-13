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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_093 gabor_021 gabor_077 gabor_149    gabor_093_alt gabor_021_alt gabor_077 gabor_149      "1_1_Encoding_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_093_021_077_149_target_position_1_2_retrieval_position_1"         gabor_043_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_1_Retrieval_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_043_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    25   292   292   399   125  9543  2992 12342      fixation_cross    gabor_027 gabor_048 gabor_079 gabor_116    gabor_027 gabor_048_alt gabor_079_alt gabor_116      "1_2_Encoding_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_027_048_079_116_target_position_2_3_retrieval_position_2"         gabor_circ gabor_048_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_2_Retrieval_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_048_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   33    38   292   292   399   125  9543  2992 12342      fixation_cross    gabor_180 gabor_047 gabor_022 gabor_074    gabor_180_alt gabor_047 gabor_022_alt gabor_074      "1_3_Encoding_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_180_047_022_074_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_022_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_3_Retrieval_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_022_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   46    52   292   292   399   125 11543  2992 14342      fixation_cross    gabor_170 gabor_093 gabor_038 gabor_011    gabor_170_alt gabor_093 gabor_038 gabor_011_alt      "1_4_Encoding_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_170_093_038_011_target_position_1_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_151_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_4_Retrieval_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_151_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   61    67   292   292   399   125 11543  2992 12342      fixation_cross    gabor_155 gabor_180 gabor_068 gabor_104    gabor_155 gabor_180_alt gabor_068 gabor_104_alt      "1_5_Encoding_Working_Memory_MRI_P2_RL_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_155_180_068_104_target_position_2_4_retrieval_position_1"        gabor_155_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_5_Retrieval_Working_Memory_MRI_P2_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_155_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   75    80   292   292   399   125  9543  2992 12342      fixation_cross    gabor_169 gabor_006 gabor_137 gabor_053    gabor_169 gabor_006 gabor_137_alt gabor_053_alt      "1_6_Encoding_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_169_006_137_053_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_137_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_6_Retrieval_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_137_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   88    93   292   292   399   125  9543  2992 14342      fixation_cross    gabor_053 gabor_179 gabor_005 gabor_160    gabor_053_alt gabor_179_alt gabor_005 gabor_160      "1_7_Encoding_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_053_179_005_160_target_position_1_2_retrieval_position_2"         gabor_circ gabor_179_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_7_Retrieval_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_179_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  102   108   292   292   399   125 11543  2992 14342      fixation_cross    gabor_046 gabor_123 gabor_176 gabor_008    gabor_046_alt gabor_123_alt gabor_176 gabor_008      "1_8_Encoding_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_046_123_176_008_target_position_1_2_retrieval_position_1"        gabor_094_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_8_Retrieval_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_094_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  117   123   292   292   399   125 11543  2992 12342      fixation_cross    gabor_164 gabor_135 gabor_101 gabor_018    gabor_164 gabor_135 gabor_101_alt gabor_018_alt      "1_9_Encoding_Working_Memory_MRI_P2_RL_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_164_135_101_018_target_position_3_4_retrieval_position_2"        gabor_circ gabor_085_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_9_Retrieval_Working_Memory_MRI_P2_RL_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_085_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  131   137   292   292   399   125 11543  2992 14342      fixation_cross    gabor_078 gabor_002 gabor_056 gabor_126    gabor_078_alt gabor_002_alt gabor_056 gabor_126     "1_10_Encoding_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_078_002_056_126_target_position_1_2_retrieval_position_2"        gabor_circ gabor_002_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_10_Retrieval_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_002_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  146   152   292   292   399   125 11543  2992 14342      fixation_cross    gabor_145 gabor_087 gabor_068 gabor_129    gabor_145 gabor_087_alt gabor_068 gabor_129_alt     "1_11_Encoding_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_145_087_068_129_target_position_2_4_retrieval_position_2"        gabor_circ gabor_039_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_11_Retrieval_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_039_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  161   167   292   292   399   125 11543  2992 14342      fixation_cross    gabor_051 gabor_174 gabor_092 gabor_109    gabor_051 gabor_174_alt gabor_092_alt gabor_109     "1_12_Encoding_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_051_174_092_109_target_position_2_3_retrieval_position_2"        gabor_circ gabor_129_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_12_Retrieval_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_129_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  176   181   292   292   399   125  9543  2992 14342      fixation_cross    gabor_137 gabor_174 gabor_094 gabor_012    gabor_137_alt gabor_174 gabor_094 gabor_012_alt     "1_13_Encoding_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_137_174_094_012_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_012_framed    blank blank blank blank    fixation_cross_target_position_1_4    "1_13_Retrieval_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_012_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  190   195   292   292   399   125  9543  2992 12342      fixation_cross    gabor_005 gabor_092 gabor_041 gabor_023    gabor_005_alt gabor_092 gabor_041 gabor_023_alt     "1_14_Encoding_Working_Memory_MRI_P2_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_005_092_041_023_target_position_1_4_retrieval_position_3"         gabor_circ gabor_circ gabor_041_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_14_Retrieval_Working_Memory_MRI_P2_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_041_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  203   208   292   292   399   125  9543  2992 12342      fixation_cross    gabor_149 gabor_017 gabor_100 gabor_175    gabor_149 gabor_017_alt gabor_100 gabor_175_alt     "1_15_Encoding_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_149_017_100_175_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_127_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_15_Retrieval_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_127_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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