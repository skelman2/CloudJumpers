/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor




if (global.p1has_ball == true){
image_index = 1;
image_xscale=1;
image_yscale=1;
x = obj_p1.x+27;
y = obj_p1.y-40;
global.p1_score+=0.025;
	if(global.p1_score >10){
		image_xscale=1.1;
		image_yscale=1.1;
		x = obj_p1.x+30;
		y = obj_p1.y-44;
	}
	if(global.p1_score > 20){
		image_xscale=1.2;
		image_yscale=1.2;
		x = obj_p1.x+30;
		y = obj_p1.y-48;
	}
		if(global.p1_score > 30){
		image_xscale=1.3;
		image_yscale=1.3;
		x = obj_p1.x+33;
		y = obj_p1.y-54;
	}
		if(global.p1_score > 40){
		image_xscale=1.4;
		image_yscale=1.4;
		x = obj_p1.x+33;
		y = obj_p1.y-56;
	}
		if(global.p1_score > 50){
		image_xscale=1.5;
		image_yscale=1.5;
		x = obj_p1.x+35;
		y = obj_p1.y-58;
	}
}






if (global.p2has_ball == true){
image_index = 2;
image_xscale=1;
image_yscale=1;
x = obj_p2.x+27;
y = obj_p2.y-40;
global.p2_score+=0.025;
if(global.p2_score > 10){
		image_xscale=1.1;
		image_yscale=1.1;
		x = obj_p2.x+30;
		y = obj_p2.y-44;
	}
	if(global.p2_score > 20){
		image_xscale=1.2;
		image_yscale=1.2;
		x = obj_p2.x+30;
		y = obj_p2.y-48;
	}
	if(global.p2_score > 30){
		image_xscale=1.3;
		image_yscale=1.3;
		x = obj_p2.x+33;
		y = obj_p2.y-54;
	}
	if(global.p2_score > 40){
		image_xscale=1.4;
		image_yscale=1.4;
		x = obj_p2.x+33;
		y = obj_p2.y-56;
	}
	if(global.p2_score > 50){
		image_xscale=1.5;
		image_yscale=1.5;
		x = obj_p2.x+35;
		y = obj_p2.y-58;
	}
}

if (global.p1_score == 10)or(global.p2_score == 10){
	audio_play_sound(snd_grow,3,false);
}
if (global.p1_score == 20)or(global.p2_score == 20){
	audio_sound_pitch(snd_grow, 1.2);
	audio_play_sound(snd_grow,3,false);
}
if (global.p1_score == 30)or(global.p2_score == 30){
	audio_sound_pitch(snd_grow, 1.3);
	audio_play_sound(snd_grow,3,false);
}
if (global.p1_score == 40)or(global.p2_score == 40){
	audio_sound_pitch(snd_grow, 1.4);
	audio_play_sound(snd_grow,3,false);
}
if (global.p1_score == 50)or(global.p2_score == 50){
	audio_sound_pitch(snd_grow, 1.5);
	audio_play_sound(snd_grow,3,false);
}