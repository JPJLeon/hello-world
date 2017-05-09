#include <iostream>
#include <stdlib.h>
using namespace std;
typedef int tipo;
const int largomax=100;


typedef struct {
	int top;
	char elementos[largomax];
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

void push(char x, Pila &p){
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
	if(p.top<0){
		char teex[]={"La pila esta vacia"};
		error(teex);
	}
	else{
		return (p.elementos[p.top--]);
	}
	return 0;
}

tipo top(Pila p){
	if(p.top<0){
		char tex[]={"La pila esta vacia"};
		error(tex);
	}
	else{
		return(p.elementos[p.top]);
	}
	return 0;
}

int conversion_bin(int num){
	Pila binario;
	crearPila(binario);
	int division,resto;
	char tope;
	int lleno;
	char posibles_caracteres[2]={'0','1'};
	resto=num%2;
	division=(num-resto)/2;
	
	while (1){
	    
		push(posibles_caracteres[resto], binario);
		
		if(division==1){
			push(posibles_caracteres[division], binario);
			break;
		}
		resto=division%2;
		division=division/2;
	}
	
	
	while (1){
	    lleno=vacia(binario);
	    
	    if (lleno==1){
			break;
		}
		
		tope=top(binario);
		cout << tope;
		pop(binario);
	}
	return 0;
}

int conversion_hexa(int num){
	Pila hexa;
	crearPila(hexa);
	int division,resto;
	char tope;
	int lleno;
	char posibles_caracteres[16]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
	
	resto=num%16;
	division=(num-resto)/16;
	
	
	while (1){
	    
	    if(num<16){push(posibles_caracteres[num], hexa);
			break;
	    }
	    
	    push(posibles_caracteres[resto], hexa);
	    if(division<16){
			push(posibles_caracteres[division], hexa);
			break;
		}
		resto=division%16;
		division=division/16;
	}
	while (1){
	    lleno=vacia(hexa);
	    if (hexa.top<0){
			break;
		}
		tope=top(hexa);
		cout<<tope;
		pop(hexa);
		
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
			continue;
		}
		
		if(conversion[0]=='b'){
		    conversion_bin(numero);
		    cout<<endl;
		}
		if(conversion[0]=='h'){
			cout<<"0x";
			conversion_hexa(numero);
			cout<<endl;
		}
		if(conversion[0]=='x' && numero==0){
			break;
		}
		
	}

	
	return 0;
}
