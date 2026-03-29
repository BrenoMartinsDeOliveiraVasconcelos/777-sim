sprite = global.dispos[pos]

// Vai 1 por 1 ate chegar no certo
if (image_index != sprite){ 
	if (frame_atual > timer_troca){
		index += 1
		
		if (index >= image_number){
			index = 1
		}
		
		image_index = index
		frame_atual = 0
	}else{
		frame_atual += 1
	}
}else{
	frame_atual = 0
}