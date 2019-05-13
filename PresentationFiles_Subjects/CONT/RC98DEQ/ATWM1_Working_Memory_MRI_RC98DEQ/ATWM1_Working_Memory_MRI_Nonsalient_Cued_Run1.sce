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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_060 gabor_092 gabor_032 gabor_077    gabor_060_alt gabor_092_alt gabor_032 gabor_077      "1_1_Encoding_Working_Memory_MRI_P2_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_060_092_032_077_target_position_3_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_122_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_1_Retrieval_Working_Memory_MRI_P2_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_122_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    26   292   292   399   125 11543  2992 14342      fixation_cross    gabor_136 gabor_072 gabor_155 gabor_003    gabor_136_alt gabor_072_alt gabor_155 gabor_003      "1_2_Encoding_Working_Memory_MRI_P2_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_136_072_155_003_target_position_3_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_048_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_2_Retrieval_Working_Memory_MRI_P2_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_048_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   35    41   292   292   399   125 11543  2992 12342      fixation_cross    gabor_162 gabor_031 gabor_121 gabor_137    gabor_162_alt gabor_031 gabor_121_alt gabor_137      "1_3_Encoding_Working_Memory_MRI_P2_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_162_031_121_137_target_position_2_4_retrieval_position_2"     gabor_circ gabor_031_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_3_Retrieval_Working_Memory_MRI_P2_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_031_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   49    54   292   292   399   125  9543  2992 12342      fixation_cross    gabor_093 gabor_161 gabor_116 gabor_133    gabor_093_alt gabor_161_alt gabor_116 gabor_133      "1_4_Encoding_Working_Memory_MRI_P2_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_093_161_116_133_target_position_3_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_133_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_4_Retrieval_Working_Memory_MRI_P2_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_133_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   62    67   292   292   399   125  9543  2992 12342      fixation_cross    gabor_011 gabor_156 gabor_075 gabor_040    gabor_011_alt gabor_156_alt gabor_075 gabor_040      "1_5_Encoding_Working_Memory_MRI_P2_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_011_156_075_040_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_075_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_5_Retrieval_Working_Memory_MRI_P2_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_075_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   75    80   292   292   399   125  9543  2992 14342      fixation_cross    gabor_143 gabor_116 gabor_003 gabor_087    gabor_143 gabor_116_alt gabor_003 gabor_087_alt      "1_6_Encoding_Working_Memory_MRI_P2_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_143_116_003_087_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_053_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_6_Retrieval_Working_Memory_MRI_P2_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_053_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   89    94   292   292   399   125  9543  2992 14342      fixation_cross    gabor_180 gabor_095 gabor_118 gabor_060    gabor_180_alt gabor_095_alt gabor_118 gabor_060      "1_7_Encoding_Working_Memory_MRI_P2_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_180_095_118_060_target_position_3_4_retrieval_position_2"      gabor_circ gabor_095_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_7_Retrieval_Working_Memory_MRI_P2_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_095_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  103   109   292   292   399   125 11543  2992 12342      fixation_cross    gabor_137 gabor_176 gabor_112 gabor_091    gabor_137 gabor_176_alt gabor_112_alt gabor_091      "1_8_Encoding_Working_Memory_MRI_P2_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_137_176_112_091_target_position_1_4_retrieval_position_1"     gabor_137_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_8_Retrieval_Working_Memory_MRI_P2_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_137_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  117   122   292   292   399   125  9543  2992 14342      fixation_cross    gabor_051 gabor_158 gabor_002 gabor_085    gabor_051_alt gabor_158 gabor_002_alt gabor_085      "1_9_Encoding_Working_Memory_MRI_P2_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_051_158_002_085_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_085_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_9_Retrieval_Working_Memory_MRI_P2_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_085_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  131   136   292   292   399   125  9543  2992 14342      fixation_cross    gabor_065 gabor_110 gabor_174 gabor_128    gabor_065_alt gabor_110 gabor_174_alt gabor_128     "1_10_Encoding_Working_Memory_MRI_P2_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_065_110_174_128_target_position_2_4_retrieval_position_2"      gabor_circ gabor_155_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_10_Retrieval_Working_Memory_MRI_P2_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_155_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  145   151   292   292   399   125 11543  2992 14342      fixation_cross    gabor_089 gabor_049 gabor_104 gabor_028    gabor_089_alt gabor_049 gabor_104_alt gabor_028     "1_11_Encoding_Working_Memory_MRI_P2_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_089_049_104_028_target_position_2_4_retrieval_position_1"     gabor_089_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_11_Retrieval_Working_Memory_MRI_P2_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_089_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  160   166   292   292   399   125 11543  2992 12342      fixation_cross    gabor_001 gabor_148 gabor_038 gabor_088    gabor_001_alt gabor_148_alt gabor_038 gabor_088     "1_12_Encoding_Working_Memory_MRI_P2_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_001_148_038_088_target_position_3_4_retrieval_position_3"     gabor_circ gabor_circ gabor_173_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_12_Retrieval_Working_Memory_MRI_P2_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_173_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  174   180   292   292   399   125 11543  2992 12342      fixation_cross    gabor_158 gabor_112 gabor_006 gabor_142    gabor_158_alt gabor_112 gabor_006 gabor_142_alt     "1_13_Encoding_Working_Memory_MRI_P2_RL_Nonsalient_DoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_158_112_006_142_target_position_2_3_retrieval_position_1"     gabor_023_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_13_Retrieval_Working_Memory_MRI_P2_RL_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_023_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   194   292   292   399   125 11543  2992 12342      fixation_cross    gabor_019 gabor_171 gabor_107 gabor_044    gabor_019_alt gabor_171 gabor_107_alt gabor_044     "1_14_Encoding_Working_Memory_MRI_P2_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_019_171_107_044_target_position_2_4_retrieval_position_2"     gabor_circ gabor_171_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_14_Retrieval_Working_Memory_MRI_P2_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_171_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_029 gabor_149 gabor_001 gabor_167    gabor_029_alt gabor_149 gabor_001_alt gabor_167     "1_15_Encoding_Working_Memory_MRI_P2_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_029_149_001_167_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_119_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_15_Retrieval_Working_Memory_MRI_P2_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_119_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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