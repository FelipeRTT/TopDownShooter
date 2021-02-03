/// @description Movimentaçãp
// You can write your code in this editor
//movimentação do player
esq = keyboard_check(ord("A")); //ord é para poder usar letras
dir = keyboard_check(ord("D"));
cima = keyboard_check(ord("W"));
baixo = keyboard_check(ord("S"));
var tiro = mouse_check_button(mb_left);

//fazendo com que a variavel de tempo passado seja incrementada step
tempoPassado ++;

if(tiro){ //quando tiro, criar a imagem do tiro
	if(tempoPassado >= cdr){//se o tempo passado for maior q o cdr, vai atirar, para nao sair infinitos tiros por segundo segurando o mouse
		instance_create_layer(x,y,"instances",obj_tiro);
		tempoPassado = 0;//zerando a var para iniciar novamente
	}
}

velh = (dir - esq) * velocidade; //movimentação
velv = (baixo - cima) * velocidade;

x+= velh ;//aplicando mov horizontal


y += velv ; // aplicando mov vertical


//fazendo o player mirar para onde o mouse esta 

var direcao = point_direction(x,y,mouse_x,mouse_y)+180;
image_angle = direcao;


//limitando movimentação do player
x = clamp(x,sprite_width/2,room_width-sprite_width/2);
y = clamp(y,sprite_height/2, room_height-sprite_width/2);



