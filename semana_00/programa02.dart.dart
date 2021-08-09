void main()
{
  // Listas
  //listas1();
  //listas2();
  listas3();
  //listas4();
}
void listas1(){ 
  List valores = [1, 'Hola', true, 20.5, 'Adios'];
  print(valores);
  valores.add('nuevo valor');
  print(valores);
  print(valores.length);
  valores.clear();
  print(valores);
}
void listas2(){
  List<int> valores = [1, 3, 4, 45, 6];
  print(valores);
}
void listas3(){
  List<dynamic> valores = ['hola', false, 23.5];
  print(valores[0]);
  valores[1] = true;
  print(valores);
}
void listas4(){
List<int> valores = List<int>.filled(3,0);
print(valores);
}
