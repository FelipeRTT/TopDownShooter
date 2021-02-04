/// @description duração e destruiçao ovo
// You can write your code in this editor
contDuracao ++;//incrementando a contagem do ovo
if(contDuracao > duracaoOvo){//quando a contagem for maior que a duração o ovo vai ser destruido e vai criar o inimigo
	instance_destroy();
}

image_xscale += 0.00150; //aumentando o tamanho do ovo
image_yscale += 0.00150;

