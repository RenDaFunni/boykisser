// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_colisx(){
	if place_meeting(x+hsp,y,obj_solid) {
		while !place_meeting(x+sign(hsp),y,obj_solid) {
			x += sign(hsp)
		}
		hsp = 0
	}

	x += hsp
}