import "dart:io";

void main()
{
  print("CALCULA EL AREA DE UN TRIANGULO \n");
  
  print("Ingresa la medida de la base del triangulo en cm: ");
  String b = stdin.readLineSync(); 
  double base = double.parse(b);

  print("Ingresa la medida de la altura del triangulo en cm: ");
  String a = stdin.readLineSync(); 
  double altura = double.parse(a); 

  double area = (base*altura)/2;
  print("El area del triangulo es: $area cm ");
}