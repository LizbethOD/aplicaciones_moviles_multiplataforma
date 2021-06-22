import "dart:io";

void main ()
{
  print("CALCULA CUANTOS POKEMONES CABEN EN UN RECTANGULO \n");

  double tamano_pokemon = 30.0;

  print("Ingresa la medida en cm de la base del rectangulo: ");
  String b = stdin.readLineSync();
  double base = double.parse(b);

  print("Ingresa la medida en cm de la altura del rectangulo: ");
  String a = stdin.readLineSync();
  double altura = double.parse(a);

  double area = base * altura;
  double total_pokemones = area / tamano_pokemon;
  print("Los pokemones que caben en el rectangulo son: $total_pokemones");
}