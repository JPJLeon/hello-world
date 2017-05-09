#include <iostream>
#include <string>
#include <vector>
using namespace std;

int main(){
  int arreglo[4]={1,2,3,4};
  int arreglo2[4];
  for(int i=0;i<4;i++){
      for(int j=0;j<3;j++){
          arreglo2[j]=arreglo[j+1];
      }
      arreglo2[3]=arreglo[0];
      cout<< arreglo2[0]<<" "<<arreglo2[1]<<" "<<arreglo2[2]<<" "<<arreglo2[3]<<" "<<endl;
      
      for(int k=0;k<4;k++){
          arreglo[k]=arreglo2[k];
      }
  }
  return 0;          
}