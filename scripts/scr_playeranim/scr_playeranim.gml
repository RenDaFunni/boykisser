// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playeranim(){
	if fall > 2 {
		if vsp < 0 {
			sprite_index = spr_player_jump
		}else{
			sprite_index = spr_player_fall
		}
		return
	}
	if move != 0 {
		sprite_index = spr_player_walk
		image_speed = clamp(abs(hsp)/10,0.15,0.25)
		return
	}
	image_speed = 0.25
}