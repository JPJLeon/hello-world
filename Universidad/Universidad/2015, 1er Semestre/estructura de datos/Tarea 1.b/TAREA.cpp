#include <sstream>
#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;
int recursivas( int arreglo[], int caset, int tam, int ciclo=0){
	int suma=arreglo[ciclo];
	vector<int> dato;
	dato.push_back(suma);
	if (ciclo==tam-1){
		--caset;
		ciclo=0;
		recursivas(arreglo, caset, tam, ciclo);
		return 0;
	}
	if (suma>caset){
		cout << " hola";
		return 0;
	}
	for(int elem=ciclo+1;elem<tam;elem++){
		
		if (suma+arreglo[elem]==caset){
			dato.push_back(arreglo[elem]);
			
			for (unsigned el=0; el<dato.size(); el++){
				cout << dato[el]<< " ";
			}
			
			cout << "duracion: " << caset;
			return 0;
		}
		if(suma+arreglo[elem]<=caset){
			suma=suma+arreglo[elem];
			dato.push_back(arreglo[elem]);
		}

	}
	++ciclo;
	recursivas(arreglo, caset, tam, ciclo);
	return 0;
}	

		
int main(){
	int canciones[20],aux,n;
	string linea;
	vector<int> can;
	vector<int> can2;
	
	getline(cin, linea, '\n');
	
	istringstream iss(linea);
	
	while (iss >> n){
		can.push_back(n);
	}
	int duracion=can[0];
	
	for (unsigned i=1;i<can.size();i++){
		
		aux=can[i];
		can2.push_back(aux);
	
	}
	sort(can2.begin(), can2.end());
	reverse(can2.begin(), can2.end());
	
	for (unsigned b=0;b<can2.size();b++){
		canciones[b]=can2[b];
		cout << canciones[b] << " ";
	}
	
	int h=(sizeof(canciones)/sizeof(*canciones));
	recursivas(canciones, duracion, h);
	return 0;
}
