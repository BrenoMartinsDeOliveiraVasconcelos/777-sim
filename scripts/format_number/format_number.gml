function format_number(num, zeroes, zero_str="0"){
	base_str = ""
	num_string = string(num)
	tamanho_string = string_length(num)
	
	if (tamanho_string > zeroes){
		if (num < 0){
			zeroes -= 1
			base_str += "-"
		}
		for (var zero=0; zero < zeroes; zero++){
			base_str += "?"
		}
	}else{
		var zero_total = zeroes - tamanho_string
		for (var zero=0; zero < zero_total; zero++){
			base_str += zero_str
		}
		
		base_str +=  num_string
	}
	
	return base_str
}