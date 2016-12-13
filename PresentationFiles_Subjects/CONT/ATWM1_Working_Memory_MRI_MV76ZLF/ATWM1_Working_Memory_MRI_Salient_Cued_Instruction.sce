# ATWM1 MRI Experiment
                         
scenario = "ATWM1_Working_Memory_MRI_salient_cued_instruction";
scenario_type = fMRI; # Fuer Scanner
#scenario_type = fMRI_emulation; # Zum Testen
scenario_type = trials;
scan_period = 2000; # TR
pulses_per_scan = 1;
pulse_code = 1;
#pulse_width=6;

active_buttons = 2;
response_matching = simple_matching;
button_codes = 10, 20;
default_font_size = 28;     
default_font  = "Arial"; 
default_background_color = 0 ,0 ,0 ;
#write_codes=true;

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
    trial_duration = stimuli_length;
    sound sound_incorrect;
    time = 0;
} wrong;
trial {
    trial_duration = stimuli_length;
    sound sound_correct;
    time = 0;
} right;
trial {
    trial_duration = stimuli_length;
    sound sound_no_response;
    time = 0;
} miss;

# Instruction Slide 1
trial { 
   picture {
      text {
         caption = "In dieser Aufgabe wird meistens \nein blinkendes Streifenmuster abgefragt.";
      } txt1;
      x = 0; y = 150;
      text {
          caption = "Die Positionen dieser Streifenmuster \nwerden anhand des Fixationskreuzes markiert.";
      } txt2;
      x = 0; y = 0;
   } picIntro1;
   time = 0;  	
   duration = 10000;
   code = "Instruction_S_C"; 	 	 
};

# Instruction Slide 2
trial { 
   picture {
      text {
          caption = "Links: ##LEFT_BUTTON_MEANING##";
      } txt3;
      x = 0; y = 150;      
      text {
          caption = "Rechts: ##RIGHT_BUTTON_MEANING##";
      } txt4;
      x = 0; y = 0; 
   } picIntro2;
   time = 0;  	
   duration = 10000;
   code = "Instruction2"; 
};

# Instruction Slide 3
trial { 
	trial_type = first_response;
	incorrect_feedback = wrong;
   correct_feedback = right;
   no_response_feedback = miss;
   picture {
      text {
          caption = "Bitte drücken Sie die Taste für '##LEFT_BUTTON_MEANING##'.";
      } txt5;
      x = 0; y = 0;      
   } picIntro3;
   time = 0;  	
   target_button = 1;  
	response_active = true;
   duration = response;
   code = "Instruction3"; 		 
};

# Instruction Slide 4
trial { 
	trial_type = first_response;
	incorrect_feedback = wrong;
   correct_feedback = right;
   no_response_feedback = miss;
   picture {
      text {
          caption = "Bitte drücken Sie die Taste für '##RIGHT_BUTTON_MEANING##'.";
      } txt6;
      x = 0; y = 0;      
   } picIntro4;
   time = 0;  	
   target_button = 2;  
	response_active = true;
   duration = response;
   code = "Instruction4"; 		 
};

# Instruction Slide 5
trial { 
	trial_type = first_response;
	incorrect_feedback = wrong;
   correct_feedback = right;
   no_response_feedback = miss;
   picture {
      text {
          caption = "Bitte drücken Sie die Taste für '##LEFT_BUTTON_MEANING##'.";
      } txt7;
      x = 0; y = 0;      
   } picIntro5;
   time = 0;  	
   target_button = 1;  
	response_active = true;
   duration = response;
   code = "Instruction5"; 		 
};

# Instruction Slide 6
trial { 
	trial_type = first_response;
	incorrect_feedback = wrong;
   correct_feedback = right;
   no_response_feedback = miss;
   picture {
      text {
          caption = "Bitte drücken Sie die Taste für '##RIGHT_BUTTON_MEANING##'.";
      } txt8;
      x = 0; y = 0;      
   } picIntro6;
   time = 0;  	
   target_button = 2;  
	response_active = true;
   duration = response;
   code = "Instruction4"; 		 
};

# Instruction Slide 7
trial { 
	trial_type = first_response;
	incorrect_feedback = wrong;
   correct_feedback = right;
   no_response_feedback = miss;
   picture {
      text {
          caption = "Bitte drücken Sie die Taste für '##LEFT_BUTTON_MEANING##'.";
      } txt9;
      x = 0; y = 0;      
   } picIntro7;
   time = 0;  	
   target_button = 1;  
	response_active = true;
   duration = response;
   code = "Instruction3"; 		 
};

# Instruction Slide 8
trial { 
	trial_type = first_response;
	incorrect_feedback = wrong;
   correct_feedback = right;
   no_response_feedback = miss;
   picture {
      text {
          caption = "Bitte drücken Sie die Taste für '##RIGHT_BUTTON_MEANING##'.";
      } txt10;
      x = 0; y = 0;      
   } picIntro8;
   time = 0;  	
   target_button = 2;  
	response_active = true;
   duration = response;
   code = "Instruction4"; 		 
};

# Instruction Slide 9
trial {
   picture {
      text {
         caption = "Jetzt geht es los. In dieser Aufgabe wird meistens \nein blinkendes Streifenmuster abgefragt.";
      } txt11;
      x = 0; y = 150;
      text {
          caption = "Die Positionen dieser Streifenmuster \nwerden anhand des Fixationskreuzes markiert.";
      } txt12;
      x = 0; y = 0;
      } picIntro9;
   time = 0;  	
  duration = 15000;
   code = "Instruction_S_C"; 		 
};
