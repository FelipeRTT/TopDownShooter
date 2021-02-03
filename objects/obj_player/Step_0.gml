/// @description Movimentaçãp
// You can write your code in this editor
//movimentação do player
esq = keyboard_check(ord("A")); //ord é para poder usar letras
dir = keyboard_check(ord("D"));
cima = keyboard_check(ord("W"));
baixo = keyboard_check(ord("S"));


velh = (dir - esq) * velocidade; //movimentação
velv = (baixo - cima) * velocidade;

x+= velh;
y += velv;
