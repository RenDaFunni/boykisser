// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_movey(){
	vsp += 0.4
	fall += 1
	if keyboard_check(vk_space) {
		jump += 1
		if fall < 5 && jump > 0 {
			if jump < 6 {
				vsp = -9.5
			}
		}
	}else{
		jump = 0
	}
	scr_colisy()
}