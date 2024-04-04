// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_movey(){
	vsp += 0.4
	fall += 1
	if keyboard_check(vk_space) {
		jump++
	}
	if (jumpbuffer > 0) {
		jumpbuffer--
		if keyboard_check(vk_space) {
			if jump < 6 {
				jumpbuffer = 0
				vsp = -11
			}
		}else{
			jump = 0
		}
	}
	
	if (vsp < 0) && (!keyboard_check(vk_space)) {
		vsp = max(vsp,-5)
	}
	scr_slopey()
	scr_colisy()
	onground = place_meeting(x,y+groundbuffer,obj_solid)
	if onground {
		jumpbuffer = 6
	}
}

function scr_slopey() {
	if place_meeting(x,y+vsp,obj_slope) {
		while !place_meeting(x,y+sign(vsp),obj_slope) {
			y += sign(vsp)
		}
		if vsp > 0 {
			fall = 0
		}
		vsp = 0
	}
}