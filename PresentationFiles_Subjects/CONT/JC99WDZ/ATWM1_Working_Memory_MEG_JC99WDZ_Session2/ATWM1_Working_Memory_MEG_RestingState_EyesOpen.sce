# ATWM1 MEG Experiment
                         
scenario = "ATWM1_Working_Memory_MEG_RestingState_EyesOpen";
#scenario_type = fMRI; # Fuer Scanner
#scenario_type = fMRI_emulation; # Zum Testen
scenario_type = trials; # for MEG
#scan_period = 2000; # TR
#pulses_per_scan = 1;
#pulse_code = 1;
pulse_width=6;

active_buttons = 2;
response_matching = simple_matching;
button_codes = 10, 20;
default_font_size = 36;     
default_font  = "Arial"; 
default_background_color = 0 ,0 ,0 ;
write_codes=true; # for MEG only

begin;	

#Picture definitions   
box { height = 382; width = 382; color = 0, 0, 0;} frame1;
box { height = 369; width = 369; color = 255, 255, 255;} frame2;    
box { height = 30; width = 4; color = 0, 0, 0;} fix1;    
box { height = 4; width = 30; color = 0, 0, 0;} fix2;
box { height = 30; width = 4; color = 255, 0, 0;} fix3;    
box { height = 4; width = 30; color = 255, 0, 0;} fix4;  
box { height = 369; width = 369; color = 42, 42, 42;} background;

TEMPLATE "StimuliDeclaration.tem" {};

# Start of experiment (MEG only) - sync with CTF software
trial { 
   picture {
      box frame1; x=0; y=0;
      box frame2; x=0; y=0;
	  box background; x=0; y=0;      
	  bitmap fixation_cross_black; x=0; y=0;
   } expStart;	
   time = 0;  	
   duration = 1000;
   code = "ExpStart"; 	
   port_code = 80;    
};

# baselinePre (at the beginning of the session)
trial { 
   picture {
      box frame1; x=0; y=0;
      box frame2; x=0; y=0;
		box background; x=0; y=0;
      bitmap fixation_cross_black; x=0; y=0;
   }default;	
   time = 0;  	
   duration = 240000;
   #mri_pulse = 1;
   code = "RestingStateEyesOpen"; 	 
   port_code = 81;  
};
