void main() {
  final objeto_mapas1 = new ClaseMapa(); //Objeto
  final objeto_mapas2 = new ClaseMapa(); 
  final objeto_mapas3 = new ClaseMapa(); 

  objeto_mapas1.metodoImprimir();
  objeto_mapas2.metodoImprimir();
  objeto_mapas3.metodoImprimir();
}

class ClaseMapa{
  //Variables globales 
  double variable1 = 10.5; 
  double PI = 3.1416; //Constantes 

  ClaseMapa{
    //Metodo contrusctor 
    print("Constructor"); 
    }

  void metodoImprimir(){
    //Metodos
    int variable1 = 12; //Variables locales
    print('mapas ${variable1} ${this.variable1}');
    }
}
 


