#region BeforeCode	|| Sprite com varinha | Animação parada | Camera(off)
//camera_set_view_pos(view_camera[0],x - view_wport[0]/2,y - view_hport[0]);
sprite_index = spr_player1comvara;
image_speed = 0;
#endregion


#region Movimento	|| Esqueda | Direita | Animação
if(keyboard_check(ord("D")) && place_free(x+spd,y)) {
	x+=spd;
	image_speed = 4;
	image_xscale = 1;
}else if(keyboard_check(ord("A")) && place_free(x-spd,y)) {
	x-=spd;
	image_speed = 4;
	image_xscale = -1;
} else {
 image_speed = 0;	
}
#endregion


#region Sprint	|| Shift para correr
if (keyboard_check(vk_shift)) {
	spd = 8;
} else {
	spd = 4;	
}
#endregion


#region PuloBind	|| Botão de pular: Spaço
if (keyboard_check(vk_space)) { 	
	if (!place_free(x,y+1)) {
		audio_play_sound(sndJump,1,0)
		jump = true	
	}
}
#endregion


#region Pulo System		|| Sistema de pulo
if (jump){
	if (jumpFrames < jumpHeight) {
		if (place_free(x,y-spd)) {
		jumpFrames += spdjump;
		y -= spdjump;
		}else {
			jump = false;
			jumpFrames = 0;
		}
	}else {
		jump = false;
		jumpFrames = 0;
	}

}
#endregion


#region Queda	|| Sistema da queda
if (jump == false) {
	if(place_free(x,y+spdfall)) {
		y += spdfall
		spdfall += grvt;
		if (spdfall > maxspeedfall) {
			spdfall = maxspeedfall;	
		}
	}else {
		spdfall = 2;
		while(place_free(x,y+1)){
			y++;	
	}
}
}
#endregion


#region Tiro	|| Sistema do tiro: aperte e


//c/ vara
if (hasVara == true) {
	if (manapowerup == false) {
		if (keyboard_check_pressed(ord("E"))) {
			audio_play_sound(sndShoot,1,0)
			var obj = instance_create_depth(x,y, -5,obj_bullet)
			obj.dir = image_xscale;
		}	
	} else {
		if (manapowerup == true) {
			if(mana >= 1) {
				if (keyboard_check_pressed(ord("E"))) {
						var obj = instance_create_depth(x,y, -5,obj_buffbullet)
						obj.dir = image_xscale;	
						mana--;
					}
				} else {
						manapowerup = false;	
			}
		}
	}
} else if (hasVara == false) {
	if(keyboard_check_pressed(ord("E"))) {
		//sistema de soco em desenvolvimento
	}
}

#endregion


#region Morte	|| Reinicialização da sala

if(life <= 0) {
	instance_destroy()	
	todie --;
}

#endregion

#region P2

if (keyboard_check_pressed(vk_enter) && p2 = false) {
	p2 = true
	todie ++;
	instance_create_depth(x,y, -5,obj_player2)
}
#endregion