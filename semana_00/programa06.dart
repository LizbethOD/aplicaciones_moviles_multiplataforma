void main(){
  List <dynamic> datos = ["hola", 5, true, "adios"]; 
  //imprimirLista(datos);
  imprimirLista2(datos);
}

void imprimirLista(List <dynamic> datos){
  int l = 0;
  while(l  < datos.length){
  print(datos[l]);
  l++;
  }
}

void imprimirLista2(List <dynamic> datos){
  int l = datos.length-1;
  while(l  >= 0){
  print(datos[l]);
  l--;
  }
}