/// @description Insert description here
// You can write your code in this editor
//definindo duração do ovo
contDuracao = 0; //definindo contador pra incrementar no step
duracaoOvo = room_speed * 5; //fazendo a duraçao do ovo ser 5 sec 
image_xscale = 0.5;//começando com o ovo menor para fazer ele ir crescendo no step
image_yscale = 0.5;
chanceZumbiDireto = irandom_range(1,100);//aquele 1% vagabundo de o player se lascar
