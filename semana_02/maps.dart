import 'Dart:io';
import 'Dart:async';

List datos =[];
void main(List <String> a){
  var respuesta = "Si";

  while(respuesta == "Si"){
    print("\n Elija el número de acuerdo a la función que desea realizar: \n");
    print("1) Mostrar todos los datos");
    print("2) Insertar un nuevo registro");
    print("3) Modificar un registro");
    print("4) Eliminar un registro");
    var opcion = stdin.readLineSync();

    if (opcion == "1"){
    mostrar();
    }
    else if (opcion == "2"){
    ingresar();
    }
    else if (opcion == "3"){
    modificar(); 
    }
    else if (opcion == "4"){
    eliminar(); 
    }
    print("¿Desea realizar alguna otra operación?: ");
    var respuesta = stdin.readLineSync();
    }
}

void  mostrar() {
  print("\n Los datos registrados son: ");
  print(datos);
}

void ingresar() {
  Map <String, dynamic> nuevo_registro = new Map(); 
  print("Escribe el nombre de la persona a registrar: "); 
  var nombre = stdin.readLineSync();
  print("Escribe su número de teléfono: ");
  var numero = stdin.readLineSync();
  print("Escribe su correo: ");
  var correo = stdin.readLineSync();
  nuevo_registro.addAll({"Nombre": nombre, "Número de teléfono": numero, "Correo": correo});
  datos.add(nuevo_registro);
  print("\n Se ha añadido un registro exitosamente");
  print(datos);
}

void modificar() {
  print("Persona a modificar: ");
  var cambio = stdin.readLineSync();
  for (int l = 0; l < datos.length; l++) {
  var modificar = new Map();
  modificar = datos[l];
  if (cambio == modificar["Nombre"]) {
  print("Escribe el nuevo nombre: ");
  var nombre_modificado = stdin.readLineSync();
  print("Escribe el nuevo número de teléfono: ");
  var numero_modificado = stdin.readLineSync();
  print("Escribe el nuevo correo: ");
  var correo_modificado = stdin.readLineSync();
  modificar["Nombre"] = nombre_modificado;
  modificar["Número de teléfono"] = numero_modificado;
  modificar["Correo"] = correo_modificado;
  print("\n Los datos se han modificado exitosamente");
  }
  }
}

void eliminar() {
  print("Escriba el nombre de la persona que desea eliminar: ");
  var nombre_eliminado = stdin.readLineSync();

  for (int l = 0; l < datos.length; l++) {
  var eliminado = new Map();
  eliminado = datos[l];
  if (nombre_eliminado == eliminado['Nombre']) {
  datos.removeAt(l);
  print("El registro se eliminó exitosamente");
 }
 }
}