// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_movex(){
	move = -(keyboard_check(vk_left) - keyboard_check(vk_right))
		if machrun != 1 && keyboard_check(vk_control){
			hsp = 0
		}
	machrun = keyboard_check(vk_control) - 0
	if machrun = 0 {
		hsp = (hsp * .75) + (1 * move)
		mach = 0
	}else{
		if fall < 2 {
			if mach < 3 {
				hsp = (hsp * .998) + (0.2 * image_xscale)
			}else{
				hsp = (hsp * .9998) + (0.035 * image_xscale)
			}
		}else{
			hsp = hsp
		}
		scr_machstates()
	}
	if !(move = 0) {
		image_xscale = abs(image_xscale) * move
		sprite_index = spr_player_walk
		image_speed = clamp(abs(hsp)/10,0.15,0.25)
	}else{
		sprite_index = spr_player_idle
		image_speed = 0.25
	}
	if place_meeting(x,y+groundbuffer,obj_slope) {
		vsp = msp / 2
	}
	if place_meeting(x+hsp,y,obj_slope) {
		while place_meeting(x,y-1,obj_slope) {
			y -= 1
		}
		y -= 1
	}
	scr_colisx()
}