import "dart:io";
List datos=[];
void main(){
  final obj_sensor = new SensorTemperatura();

  obj_sensor.registrar();
}

class SensorTemperatura{
void insertar(){
  print("\n***Ingresa correctamente los siguientes datos*** \n");
  print("Id del sensor: ");
  var id_sensor=stdin.readLineSync(); 
  print("Valor de la temperarura: ");
  var valor_temperatura=stdin.readLineSync();
  print("Fecha en la que se esta realizando el registro: ");
  var fecha=stdin.readLineSync();
    
Map <String, dynamic> sensor_temperatura={"Id":id_sensor, "Valor":valor_temperatura,"Fecha": fecha};
  datos.add(sensor_temperatura);
}
void mostrar(){
  print("\nLos registros realizados son: ");
  print("$datos");
  }

  registrar(){
    print("Escriba el número de registros que desea ingresar: ");
    var num_registros=stdin.readLineSync();
    int registros=int.parse(num_registros);
    for (int l = 0; l < registros; l++){
      insertar();
      mostrar();
  }
  }
}