import "dart:io";

void main()
{
  print("CALCULA EL PROMEDIO \n");
  
  print("Ingresa la calificacion que se obtubo en la primera evaluacion: ");
  String p1 = stdin.readLineSync();
  double primer_promedio = double.parse(p1);
  
  print("Ingresa la calificacion que se obtubo en la segunda evaluacion: ");
  String p2 = stdin.readLineSync();
  double segundo_promedio = double.parse(p2);

  print("Ingresa la calificacion que se obtubo en la tercera evaluacion: ");
  String p3 = stdin.readLineSync();
  double tercer_promedio = double.parse(p3);

  double primer_porcentaje = primer_promedio * 0.20;
  double segundo_porcentaje = segundo_promedio * 0.3;
  double tercer_porcentaje = tercer_promedio * 0.5;

  double promedio_general = primer_porcentaje + segundo_porcentaje + tercer_porcentaje;
  
  print("El promedio obtenido al final es de: $promedio_general");
}