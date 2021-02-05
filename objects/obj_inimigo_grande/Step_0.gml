/// @description Insert description here
// You can write your code in this editor
event_inherited(); //herdando eventos do parente


//fazendo ele perder vida ao levar tiro
var tiro = instance_place(x,y,obj_tiro); //checando a colisao com o obj tiro

if(tiro){//se esta colidindo com tiro 
	vida --;//perder um de vida
	instance_destroy(tiro);//destruir tiro, MUITO IMPORTANTE POIS SE NAO ELE COLIDIRIA VARIAS VEZES COM O INIMIGO POR EXEMPLO O 5 DE VIDA QUE ESTA DEFINIDO AGORA COM UM TIRO ELE IRIA COLIDIR MAIS DO QUE ESSAS 5 VEZES
}
if(vida <=0){//se destruindo ao chegar em 0 de vida
	instance_destroy();
}


//quando o player colidir com o inimigo ele vai perder dois de vida
var colidindo2 = instance_place(x,y,obj_player);
if(colidindo2 && jaColidiu = false){
	obj_player.playerVirandoZumbi-=2;
	jaColidiu = true; //ele colidiria inifinitamente, porem com essa variavel ele vai colidir uma vez e imteromper o if pois se nao em uma colisao so ele colidiria varias e varias vezes oque faria o player morrer diretamente
	obj_player.adBrilho = true;
}