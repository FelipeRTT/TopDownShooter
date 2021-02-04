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