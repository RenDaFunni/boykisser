// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_movex(){
	move = -(keyboard_check(vk_left) - keyboard_check(vk_right))
	hsp = (hsp * .75) + (1 * move)
	if !(move = 0) {
		image_xscale = abs(image_xscale) * move
		sprite_index = spr_player_walk
		image_speed = clamp(abs(hsp)/10,0.15,0.25)
	}else{
		sprite_index = spr_player_idle
		image_speed = 0.25
	}
	scr_colisx()
}