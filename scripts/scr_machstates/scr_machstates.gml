// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_machstates(){
	msp = abs(hsp)
	if msp >= 0 {
		mach = 1
	}
	if msp >= 6 {
		mach = 2
	}
	if msp >= 10 {
		mach = 3
	}
	if msp >= 16 {
		mach = 4
	}
}