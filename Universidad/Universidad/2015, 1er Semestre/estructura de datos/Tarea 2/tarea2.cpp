#include <iostream>
#include <stdlib.h>
using namespace std;
typedef int tipo;
const int largomax=100;

typedef struct {
	int top;
	int elementos[largomax];
} Pila;


void crearPila(Pila &p){
	p.top=-1;
	}

void error(char *texto){
	cout << texto << endl;
	exit(0);
	}

int vacia(Pila p){
	if(p.top < 0){
		return 1;
		}
	else{
		return 0;
		}
	}
void push(tipo x, Pila &p){
	if(p.top==largomax-1){
		char men[]={"La pila esta llena"};
		error(men);
	}
	else{
		p.top++;
		p.elementos[p.top]=x;
	}
}

tipo pop(Pila &p){
	if(vacia(p)){
		char teex[]={"La pila esta vacia"};
		error(teex);
	}
	else{
		return (p.elementos[p.top--]);
	}
	return 0;
}

tipo top(Pila p){
	if(vacia(p)){
		char tex[]={"La pila esta vacia"};
		error(tex);
	}
	else{
		return(p.elementos[p.top]);
	}
	return 0;
}

int conversion_hexa(int nu){
	Pila hexa;
	crearPila(hexa);
	int division,resto;
	int tope;
	int lleno;
	switch (nu){
		case 0:
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
		case 7:
		case 8:
		case 9:
		case 10:
		case 11:
		case 12:
		case 13:
		case 14:
		case 15:
			push(nu, hexa);
			while (1){
				tope=top(hexa);
				cout <<"0x";
				switch(tope){
					case 10:
						cout << 'A';
						break;
					case 11:
						cout << 'B';
						break;
					case 12:
						cout << 'C';
						break;
					case 13:
						cout << 'D';
						break;
					case 14:
						cout << 'E';
						break;
					case 15:
						cout << 'F';
						break;
					default:
						cout << tope;
						pop(hexa);
						lleno=vacia(hexa);
						if (lleno==1){
							break;
						}
						break;
				}
			break;
			}
			break;
		default: 
			resto=nu%16;
			division=nu/16;
			while (1){
				push(resto, hexa);
				if (division==1){
					push(division, hexa);
					break;
				}
				resto=division%16;
				division=division/16;
			}
			
			while (1){
				tope=top(hexa);
				cout<<"0x";
				switch(tope){
					case 10:
						cout << 'A';
						break;
					case 11:
						cout << 'B';
						break;
					case 12:
						cout << 'C';
						break;
					case 13:
						cout << 'D';
						break;
					case 14:
						cout << 'E';
						break;
					case 15:
						cout << 'F';
						break;
					default:
						while (1){
						cout << tope;
						pop(hexa);
						lleno=vacia(hexa);
						if (lleno==1){
							break;
						}
						}
						break;
				
				}
				break;
				}
			break;	
			}
	
	return 0;

	
}

int conversion_bin(int num){
	Pila binario;
	crearPila(binario);
	int division,resto;
	int tope;
	int lleno;
	resto=num%2;
	division=num/2;
	while (1){
		
		push(resto, binario);
		
		if(division==1){
			push(division, binario);
			break;
		}
		resto=division%2;
		division=division/2;
	}
	
	
	while (1){
		tope=top(binario);
		cout << tope;
		pop(binario);
		lleno=vacia(binario);
		if (lleno==1){
			break;
		}
	}
	
	return 0;
	}	

int main(){
	while (1){
		char conversion[1];
		int numero;
		cin >> conversion[0] >> numero;
		
		if (conversion[0]=='b' && numero==1){
			cout << 1 << endl;
			continue;
		}
		if (conversion[0]=='b' && numero==0){
			cout << 0 << endl;
		}
		
		if(conversion[0]=='b'){
			conversion_bin(numero);
			cout << endl;
		}
		if(conversion[0]=='h'){
			conversion_hexa(numero);
			cout << endl;
		}
		if(conversion[0]=='x' && numero==0){
			break;
		}
		
	}
	
	return 0;
}	
