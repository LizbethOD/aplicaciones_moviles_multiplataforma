import "dart:io";

void main()
{
  print("CALCULA LA EDAD DE UN PERRO EN AÑOS HUMANOS \n");

  int edad_perro = 7;

  print("Ingresa la edad del perro: ");
  String e_perro = stdin.readLineSync();
  double edad = double.parse(e_perro);

  double edad_humano = edad * edad_perro;
  print("La edad del perro en años humanos es de: $edad_humano");
}