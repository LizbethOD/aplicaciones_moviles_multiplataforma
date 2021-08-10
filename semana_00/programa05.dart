void main(){
  List <int> datos = [1, 5, 8, 6, 9];
  //imprimirLista(datos);
  imprimirLista2(datos);
}


void imprimirLista(List datos){
  for(int l=0; l < datos.length; l++){
    print(datos[l]);
  }
}

void imprimirLista2(List datos){
  for(int l=datos.length-1; l >= 0; l--){
    print(datos[l]);
  }
}