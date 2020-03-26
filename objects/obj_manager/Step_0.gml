/// @description Insert description here
// You can write your code in this editor





if (keyboard_check(vk_space)){
global.spawn_timer = 800;	
}



	if (global.spawn_timer == 775) or (global.spawn_timer == 750)
	or (global.spawn_timer == 730) or (global.spawn_timer == 690)
	or (global.spawn_timer == 660) or (global.spawn_timer == 615)
	or (global.spawn_timer == 720) or (global.spawn_timer == 700)
	or (global.spawn_timer == 675) or (global.spawn_timer == 650)
	or (global.spawn_timer == 625) or (global.spawn_timer == 600)
	or (global.spawn_timer == 575) or (global.spawn_timer == 500){
	var new_x = random_range(0, room_width - 32);
	var new_y = random_range(0,room_height-50);
	instance_create_layer(new_x,new_y,"Instances",obj_platform);
	}




if (global.spawn_timer < 450){
		while (instance_number(obj_platform)<15){
		var new_x = random_range(0, room_width - 32);
		var new_y = random_range(0,room_height-50);
		instance_create_layer(new_x,new_y,"Instances", obj_platform);
			if(place_meeting(x,y,obj_platform)){
			x+=irandom_range(-25,25);
			y+=irandom_range(-25,25);
			}
		}
	}



if (global.spawn_timer >200){
	global.spawn_timer -=1;

	if (global.spawn_timer == 500){
		
		var p1 = instance_create_layer(0,200, "Instances",obj_p1);
		p1.player_id = 0;
		
		var p2 = instance_create_layer(200,200, "Instances",obj_p2);
		p2.player_id = 1;
	}
	
}



if (global.p1_score == 60){
	part_emitter_destroy_all(parts);
	instance_destroy(obj_p2);
	instance_destroy(obj_p1);
	global.p1has_ball = false;
	global.p1_win = true;
	if (keyboard_check_pressed(ord("R"))) room_restart();
	instance_create_layer(34,(room_height/2)+50,"Stars",obj_confetti);
	instance_create_layer(98,(room_height/2)+50,"Stars",obj_confetti);
	instance_create_layer(162,(room_height/2)+50,"Stars",obj_confetti);
	if (obj_confetti.image_index >= 6){
	instance_destroy(obj_confetti);	
	}
	if (sound_timer > 0){
		sound_timer--;
		if (sound_timer <10 and sound_timer >0){
		audio_play_sound(snd_win,6,false);
		}
	}
}
if (global.p2_score == 60){
	part_emitter_destroy_all(parts);
	instance_destroy(obj_p2);
	instance_destroy(obj_p1);
	global.p2has_ball = false;
	global.p2_win = true;
	if (keyboard_check_pressed(ord("R"))) room_restart();
	instance_create_layer(34,(room_height/2)+50,"Stars",obj_confetti);
	instance_create_layer(98,(room_height/2)+50,"Stars",obj_confetti);
	instance_create_layer(162,(room_height/2)+50,"Stars",obj_confetti);
	if (obj_confetti.image_index >= 6){
	instance_destroy(obj_confetti);	
	}
	if (sound_timer > 0){
		sound_timer--;
		if (sound_timer <3 and sound_timer >0){
		audio_play_sound(snd_win,2,false);
		}
	}
}






if (global.spawn_timer < 790 and global.spawn_timer > 787){
audio_play_sound(snd_start,1,false);	
}
if (global.spawn_timer < 750 and global.spawn_timer > 748){
audio_play_sound(snd_beepLow,4,false);		
}

if (global.spawn_timer < 699 and global.spawn_timer > 697){
audio_play_sound(snd_beepLow,4,false);			
}

if (global.spawn_timer < 649 and global.spawn_timer > 647){
audio_play_sound(snd_beepLow,4,false);			
}
if (global.spawn_timer < 599 and global.spawn_timer > 597){
audio_play_sound(snd_beepLow,4,false);		
}
if (global.spawn_timer < 549 and global.spawn_timer > 547){
audio_sound_pitch(snd_beepLow, 2);
audio_play_sound(snd_beepLow,4,false);			
}





//particles
if (global.p2has_ball == true){
part_type_color1(sparkle,c_orange);
part_emitter_region(parts,emitter,obj_p2.x+8,obj_p2.x+10,obj_p2.y+10,obj_p2.y+12,ps_shape_ellipse,ps_distr_gaussian);
}
if (global.p1has_ball == true){
part_type_color1(sparkle,c_lime);
part_emitter_region(parts,emitter,obj_p1.x+8,obj_p1.x+10,obj_p1.y+10,obj_p1.y+12,ps_shape_ellipse,ps_distr_gaussian);
}
part_emitter_stream(parts,emitter,sparkle,1);



//part_particles_create(parts,obj_ball.x,obj_ball.y,sparkle,5);