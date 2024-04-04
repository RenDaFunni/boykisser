// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playeranim(){
	if mach = 4 {
		sprite_index = spr_player_crazyrun
		image_speed = 0.5
		return
	}
	if mach = 3 {
		sprite_index = spr_player_mach3
		image_speed = 0.35
		return
	}
	if mach = 2 {
		sprite_index = spr_player_mach2
		image_speed = 0.45
		return
	}
	if mach = 1 {
		sprite_index = spr_player_mach1
		return
	}
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
	sprite_index = spr_player_idle
	image_speed = 0.25
}