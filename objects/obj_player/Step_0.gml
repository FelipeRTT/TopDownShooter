/// @description Movimentaçãp
// You can write your code in this editor
//movimentação do player
esq = keyboard_check(ord("A")); //ord é para poder usar letras
dir = keyboard_check(ord("D"));
cima = keyboard_check(ord("W"));
baixo = keyboard_check(ord("S"));


velh = (dir - esq) * velocidade; //movimentação
velv = (baixo - cima) * velocidade;

x+= velh ;//aplicando mov horizontal


y += velv ; // aplicando mov vertical


//fazendo o player mirar para onde o mouse esta 

var direcao = point_direction(x,y,mouse_x,mouse_y)+180;
image_angle = direcao;