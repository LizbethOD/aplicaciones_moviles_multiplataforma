import "dart:io";

void main()
{
  print("CALCULA EL PERIMETRO DE UN HEXAGONO \n");
  
  print("Ingresa la medida de un lado del hexagono en cm: ");
  String l = stdin.readLineSync(); 
  double lado = double.parse(l);

  double perimetro = (lado*6);
  print("El perimetro del hexagono es: $perimetro cm ");
}