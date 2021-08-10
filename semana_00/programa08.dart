void main(){
  List <dynamic> datos = ["hola", false, 53.2, "adios"];
  //imprimirList1(datos);
  imprimirList2(datos); 
}

void imprimirList1(List <dynamic> datos){
  for(var dato in datos){
    print("$dato");
  }
}

void imprimirList2(List <dynamic> datos){
  datos.forEach((var dato) => print(dato));
  }