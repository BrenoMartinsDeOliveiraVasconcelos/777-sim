image_index  = 1

if (sprite_index == sBotao){
		global.clique += 1
		show_debug_message(string(global.clique)+"C")
		show_debug_message(string(global.timing))
		for (var pos = 0; pos < 3; pos++){
			global.dispos[pos] = irandom_range(1, imagens-1)
		}


	if ( not audio_is_playing(letsgogambling)){
		global.verificar_estado = true
	
		if (global.primeiravez){
			audio_play_sound(letsgogambling, 1, 0)
			global.primeiravez = false
		}
	}
}else{
	if (global.clique >= global.timing && not global.gameover){
		audio_play_sound(letsbefinaciallyresponsible, 1, 0)
		global.modo_vitoria = true
	}else{
		global.clique = 0
		global.timing = irandom_range(1, 5)
		audio_play_sound(awdangit, 1, 0)
	}	
}