if (not audio_is_playing(letsgogambling)){
	if (global.verificar_estado){
	
		if (global.modo_vitoria){
			global.dispos = [global.dispos[0], global.dispos[0], global.dispos[0]]
		}
		
		var posa = global.dispos[0]
		var posb = global.dispos[1]
		var posc = global.dispos[2]
		
		if (posa == posb && posb == posc){
			audio_play_sound(icantstopwinning, 1, 0)
			
			global.dinheiro = global.dinheiro + round((base_ganho * (1+(global.dispos[0]/imagens))))
			
		}else{
			global.dinheiro = global.dinheiro -  round(base_ganho * (1+global.dispos[0]/imagens))
			audio_play_sound(awdangit, 1, 0)
		}
		
		global.verificar_estado = false
	}
}


if (global.dinheiro < 0){
	global.gameover = true
}