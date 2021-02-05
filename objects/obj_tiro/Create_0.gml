/// @description iniciando variaveis e angulo
// You can write your code in this editor
//pegando o lugar do mouse
mouseDirec = point_direction(x,y,mouse_x, mouse_y);
direction = mouseDirec;//fazendo a direção ser para onde o mouse apontar
speed = 20; //definindo velocidade
image_angle = mouseDirec + 270; //fazendo o angulo da imagem ser para onde o mouse esta apontando e girando a sprite


//fazendo efeito no tiro
image_xscale = 2;
image_yscale = 2;

alarm[0] = 2; //definindo o alarme