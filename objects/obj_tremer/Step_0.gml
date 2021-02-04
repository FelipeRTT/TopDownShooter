/// @description tremendo a tela
// You can write your code in this editor

//como é com view tem que mecher diretamente na view
view_xport[0] = random_range(-treme, treme); // fazendo com que o x da view port seja definido aleatoriamente com o treme, e vai ficar mechendo sem parar pois esta no step

view_yport[0] = random_range(-treme, treme);


//fazendo o efeito ser mais suave diminuindo o treme step
treme *= .95 //diminuindo o tremer 5 % por frame pro evento ir ficando mais leve