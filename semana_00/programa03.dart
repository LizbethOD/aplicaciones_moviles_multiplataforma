void main(){
  Map <String, dynamic> persona = {
  "nombre" : "Dejah",
  "edad" : 25,
  "soltero" : true, 
  };

  print(persona["edad"]);
  persona["edad"] = 20;
  print(persona);

  persona.addAll({"email" : "dejah@correo.com"}); 
  print(persona);

  persona.remove("soltero");
  print(persona);
}
