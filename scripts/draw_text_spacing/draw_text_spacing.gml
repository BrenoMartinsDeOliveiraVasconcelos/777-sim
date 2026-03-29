
function draw_text_spacing(font, x, y, spacing, text, xscale, yscale, angle=0) {
    // Define a fonte
    draw_set_font(font);
    
    // Inicializa posição atual
    var _x = x;
    var _y = y;
    
    // Percorre cada caractere do texto
    for (var i = 1; i <= string_length(text); i++) {
        var char = string_char_at(text, i);
        
        // Se encontrar quebra de linha, avança para a próxima linha e reseta X
        if (char == "\n") {
            _y += (string_height("A")*yscale);   // Altura aproximada da linha atual
            _x = x;                     // Reinicia X na coordenada original
            continue;
        }
        
        // Desenha o caractere
        draw_text_transformed(_x, _y, char, xscale, yscale, angle);
        
        // Avança X pela largura do caractere + espaçamento extra
        _x += (string_width(char)*xscale) + spacing;
    }
}