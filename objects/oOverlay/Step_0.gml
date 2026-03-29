if (global.gameover){
	if (frame > opacidade_timer){
		image_alpha += rate_opacidade
		if (image_alpha > 1){
			image_alpha = 1
		}
		frame = 0
	}else{
		frame += 1
	}
}