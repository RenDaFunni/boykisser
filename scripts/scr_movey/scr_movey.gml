// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_movey(){
	vsp += 0.4
	fall += 1
	if keyboard_check(vk_space) {
		if fall < 5 {
			vsp = -8
		}
	}
	scr_colisy()
}