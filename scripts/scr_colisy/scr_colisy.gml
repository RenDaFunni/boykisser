// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_colisy(){
	if place_meeting(x,y+vsp,obj_solid) {
		while !place_meeting(x,y+sign(vsp),obj_solid) {
			y += sign(vsp)
		}
		if vsp > 0 {
		fall = 0
		}
		vsp = 0
	}

	y += vsp
}