void main(){
  //mapas1();
  //mapas2();
  //mapas3();
  //mapas4();
  mapas5();
}
void mapas1(){
  Map datos = {
  'nombre' : 'Dejah',
  'edad' : 20,
  'soltero' : true
  };
  print(datos);
  print(datos['nombre']);
}
void mapas2(){
  Map <dynamic, dynamic> datos = {
  'nombre' : 'Dejah',
  'edad' : 20,
  'soltero' : true
  };
  print(datos);
  print(datos['nombre']);
}
void mapas3(){
  Map <String, int> datos = {
  'sensor1' : 5,
  'sensor2' : 20,
  'sensor3' : 3,
  'motor1' : 1
  };
  print(datos);
  print(datos['sensor1']);
}
void mapas4(){
  Map <String, dynamic> datos = {
  'nombre' : 'Dejah',
  'edad' : 20,
  'soltero' : true
  };
  print(datos);
  print(datos['nombre']);
}
void mapas5(){
  Map <int, dynamic> datos = {
  10 : 'Dejah',
  1 : 20,
  20 : true
  };
  print(datos);
  print(datos[10]);
}