scenario = "empathy";
#scenario_type = fMRI;
pulse_code= 10;
sequence_interrupt=false;		#default
active_buttons = 10;
button_codes=1,2,3,4,5,6,7,8,9,10;
default_picture_duration = 12000;
default_font="times";
default_font_size=44;
default_text_color=255,255,255;
default_background_color=0,0,0;

begin;

picture {} default;	#blank screen
picture { text { caption = 
"Rate your concern in a scale 
from one to ten when asked. 
Please wait to choose 
concern until prompted."; }; x=0; y=0; } inst;
picture { text { caption =
"How much did it concern you 
from 1 to 10?"; }; x=0; y=0; } quest;
picture { text { caption = "+"; font_size = 200; }; x=0; y=0; } fix;
picture { bitmap { filename = "01e.jpg"; }; x=0; y=0;  } ae; 
picture { bitmap { filename = "01n.jpg"; }; x=0; y=0;  } bn;
picture { bitmap { filename = "02e.jpg"; }; x=0; y=0;  } ce;
picture { bitmap { filename = "02n.jpg"; }; x=0; y=0;  } dn;
picture { bitmap { filename = "03e.jpg"; }; x=0; y=0;  } ee;
picture { bitmap { filename = "03n.jpg"; }; x=0; y=0;  } fn;
picture { bitmap { filename = "04e.jpg"; }; x=0; y=0;  } ge;
picture { bitmap { filename = "04n.jpg"; }; x=0; y=0;  } hn;
picture { bitmap { filename = "05e.jpg"; }; x=0; y=0;  } ie;
picture { bitmap { filename = "05n.jpg"; }; x=0; y=0;  } jn;
picture { bitmap { filename = "06e.jpg"; }; x=0; y=0;  } ke;
picture { bitmap { filename = "06n.jpg"; }; x=0; y=0;  } ln;
picture { bitmap { filename = "07e.jpg"; }; x=0; y=0;  } me;
picture { bitmap { filename = "07n.jpg"; }; x=0; y=0;  } nn;
picture { bitmap { filename = "08e.jpg"; }; x=0; y=0;  } oe;
picture { bitmap { filename = "08n.jpg"; }; x=0; y=0;  } pn;
picture { bitmap { filename = "09e.jpg"; }; x=0; y=0;  } qe;
picture { bitmap { filename = "09n.jpg"; }; x=0; y=0;  } rn;
picture { bitmap { filename = "10e.jpg"; }; x=0; y=0;  } se;
picture { bitmap { filename = "10n.jpg"; }; x=0; y=0;  } tn;
picture { bitmap { filename = "11e.jpg"; }; x=0; y=0;  } ue;
picture { bitmap { filename = "11n.jpg"; }; x=0; y=0;  } vn;
picture { bitmap { filename = "12e.jpg"; }; x=0; y=0;  } we;
picture { bitmap { filename = "12n.jpg"; }; x=0; y=0;  } xn;
picture { bitmap { filename = "13e.jpg"; }; x=0; y=0;  } ye;
picture { bitmap { filename = "13n.jpg"; }; x=0; y=0;  } zn;
picture { bitmap { filename = "14e.jpg"; }; x=0; y=0;  } aae;
picture { bitmap { filename = "14n.jpg"; }; x=0; y=0;  } abn;
picture { bitmap { filename = "15e.jpg"; }; x=0; y=0;  } ace;
picture { bitmap { filename = "15n.jpg"; }; x=0; y=0;  } adn;
picture { bitmap { filename = "16e.jpg"; }; x=0; y=0;  } aee;
picture { bitmap { filename = "16n.jpg"; }; x=0; y=0;  } afn;

trial { picture inst; duration=8000; code="inst";} instructions;
trial { picture fix; duration=6000; code="fixation";} fixation;
trial { picture fix; duration=12000; code="fixing";} fixing;
trial { picture quest; duration=4000; code="question";} question;

trial { picture bn; code = "01n"; } p01n;
trial { picture ye; code = "13e";} p13e;
trial { picture ce; code = "02e";} p02e;
trial { picture abn; code = "14n";} p14n;
trial { picture fn; code = "03n";} p03n;
trial { picture adn; code = "15n";} p15n;
trial { picture ge; code = "04e";} p04e;
trial { picture afn; code = "16n";} p16n;
trial { picture ie; code = "05e";} p05e;
trial { picture rn; code = "09n";} p09n;
trial { picture ke; code = "06e";} p06e;
trial { picture se; code = "10e";} p10e;
trial { picture nn; code = "07n";} p07n;
trial { picture ue; code = "11e";} p11e;
trial { picture pn; code = "08n";} p08n;
trial { picture xn; code = "12n";} p12n;
trial { picture qe; code = "09e";} p09e;
trial { picture jn; code = "05n";} p05n;
trial { picture tn; code = "10n";} p10n;
trial { picture ln; code = "06n";} p06n;
trial { picture vn; code = "11n";} p11n;
trial { picture me; code = "07e";} p07e;
trial { picture we; code = "12e";} p12e;
trial { picture oe; code = "08e";} p08e;
trial { picture zn; code = "13n";} p13n;
trial { picture ae; code = "01e";} p01e;
trial { picture aae; code = "14e";} p14e;
trial { picture dn; code = "02n";} p02n;
trial { picture ace; code = "15e";} p15e;
trial { picture ee; code = "03e";} p03e;
trial { picture aee; code = "16e";} p16e;
trial { picture hn; code = "04n";} p04n;

begin_pcl;

#presenting the stimuli

instructions.present();
fixation.present();
p01n.present();
question.present();
p13e.present();
question.present();
p02e.present();
question.present();
p14n.present();
question.present();
p03n.present();
question.present();
p15n.present();
question.present();
p04e.present();
question.present();
p16n.present();
question.present();
fixing.present();
p05e.present();
question.present();
p09n.present();
question.present();
p06e.present();
question.present();
p10e.present();
question.present();
p07n.present();
question.present();
p11e.present();
question.present();
p08n.present();
question.present();
p12n.present();
question.present();
fixing.present();
p09e.present();
question.present();
p05n.present();
question.present();
p10n.present();
question.present();
p06n.present();
question.present();
p11n.present();
question.present();
p07e.present();
question.present();
p12e.present();
question.present();
p08e.present();
question.present();
fixing.present();
p13n.present();
question.present();
p01e.present();
question.present();
p14e.present();
question.present();
p02n.present();
question.present();
p15e.present();
question.present();
p03e.present();
question.present();
p16e.present();
question.present();
p04n.present();
question.present();
fixing.present();
