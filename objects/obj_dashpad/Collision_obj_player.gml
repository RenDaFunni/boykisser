if cooldown > 0 {
	cooldown--
}else{
	obj_player.image_xscale = image_xscale
	var mach = obj_player.mach
	if mach < 3 {
		obj_player.hsp = 10 * image_xscale
	}else{
		obj_player.hsp = (abs(obj_player.hsp) + 0.5) * image_xscale
	}
}

