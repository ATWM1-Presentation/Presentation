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
    6    11   292   292   399   125  9543  2992 12342      fixation_cross    gabor_031 gabor_071 gabor_051 gabor_138    gabor_031_alt gabor_071_alt gabor_051 gabor_138      "1_1_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_031_071_051_138_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_051_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_1_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_051_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   19    24   292   292   399   125  9543  2992 14342      fixation_cross    gabor_077 gabor_108 gabor_166 gabor_129    gabor_077 gabor_108 gabor_166_alt gabor_129_alt      "1_2_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_077_108_166_129_target_position_1_2_retrieval_position_2"      gabor_circ gabor_108_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_2_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_108_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   33    38   292   292   399   125  9543  2992 12342      fixation_cross    gabor_096 gabor_169 gabor_052 gabor_117    gabor_096_alt gabor_169 gabor_052 gabor_117_alt      "1_3_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_096_169_052_117_target_position_2_3_retrieval_position_3"      gabor_circ gabor_circ gabor_006_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_3_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_006_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   46    51   292   292   399   125  9543  2992 14342      fixation_cross    gabor_063 gabor_086 gabor_013 gabor_170    gabor_063_alt gabor_086 gabor_013 gabor_170_alt      "1_4_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_063_086_013_170_target_position_2_3_retrieval_position_3"      gabor_circ gabor_circ gabor_149_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_4_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_149_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   60    65   292   292   399   125  9543  2992 12342      fixation_cross    gabor_020 gabor_179 gabor_133 gabor_067    gabor_020 gabor_179 gabor_133_alt gabor_067_alt      "1_5_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_020_179_133_067_target_position_1_2_retrieval_position_2"      gabor_circ gabor_044_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_5_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_044_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   73    79   292   292   399   125 11543  2992 12342      fixation_cross    gabor_008 gabor_056 gabor_130 gabor_087    gabor_008_alt gabor_056_alt gabor_130 gabor_087      "1_6_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_008_056_130_087_target_position_3_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_040_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_6_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_040_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   87    92   292   292   399   125  9543  2992 14342      fixation_cross    gabor_047 gabor_032 gabor_121 gabor_099    gabor_047 gabor_032_alt gabor_121_alt gabor_099      "1_7_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_047_032_121_099_target_position_1_4_retrieval_position_2"      gabor_circ gabor_032_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_7_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_032_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  101   106   292   292   399   125  9543  2992 12342      fixation_cross    gabor_085 gabor_174 gabor_145 gabor_116    gabor_085 gabor_174_alt gabor_145_alt gabor_116      "1_8_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_085_174_145_116_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_116_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_8_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_116_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  114   120   292   292   399   125 11543  2992 12342      fixation_cross    gabor_001 gabor_085 gabor_027 gabor_165    gabor_001_alt gabor_085_alt gabor_027 gabor_165      "1_9_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_001_085_027_165_target_position_3_4_retrieval_position_1"     gabor_140_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_9_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_140_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  128   133   292   292   399   125  9543  2992 14342      fixation_cross    gabor_171 gabor_011 gabor_121 gabor_031    gabor_171 gabor_011 gabor_121_alt gabor_031_alt     "1_10_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_171_011_121_031_target_position_1_2_retrieval_position_2"      gabor_circ gabor_060_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_10_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_060_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  142   148   292   292   399   125 11543  2992 14342      fixation_cross    gabor_180 gabor_107 gabor_165 gabor_056    gabor_180_alt gabor_107_alt gabor_165 gabor_056     "1_11_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_180_107_165_056_target_position_3_4_retrieval_position_3"     gabor_circ gabor_circ gabor_165_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_11_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_165_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  157   163   292   292   399   125 11543  2992 14342      fixation_cross    gabor_126 gabor_154 gabor_044 gabor_082    gabor_126_alt gabor_154 gabor_044 gabor_082_alt     "1_12_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_126_154_044_082_target_position_2_3_retrieval_position_2"     gabor_circ gabor_154_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_12_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_154_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  172   178   292   292   399   125 11543  2992 14342      fixation_cross    gabor_118 gabor_013 gabor_052 gabor_136    gabor_118 gabor_013 gabor_052_alt gabor_136_alt     "1_13_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_118_013_052_136_target_position_1_2_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_136_framed    blank blank blank blank    fixation_cross_target_position_1_2    "1_13_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_136_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  187   193   292   292   399   125 11543  2992 12342      fixation_cross    gabor_005 gabor_159 gabor_049 gabor_137    gabor_005 gabor_159_alt gabor_049_alt gabor_137     "1_14_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_005_159_049_137_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_137_framed    blank blank blank blank    fixation_cross_target_position_1_4    "1_14_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_137_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_159 gabor_015 gabor_036 gabor_125    gabor_159 gabor_015_alt gabor_036_alt gabor_125     "1_15_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_159_015_036_125_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_077_framed    blank blank blank blank    fixation_cross_target_position_1_4    "1_15_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_077_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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