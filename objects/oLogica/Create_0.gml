randomise()

global.FULLSCREEN_TECLA = vk_f11

global.fonte_letras = "AO-0123456789?D"
global.numeros_sprite = sNumeros
global.fonte_disp = font_add_sprite_ext(global.numeros_sprite, global.fonte_letras, true, 0)


global.dinheiro = 1000
global.verificar_estado = false
global.primeiravez = true
global.gameover = false
global.modo_vitoria = false
global.timing = irandom_range(1, 5)
global.clique = 0

fullscreen = false

global.dispos = [0, 0, 0]


