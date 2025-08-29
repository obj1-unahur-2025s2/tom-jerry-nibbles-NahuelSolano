object tom {
    var energia = 50;
    
    method energia() = energia;
    
    method velocidadMaxima() {
        return 5 + energia / 10;
    }

    method correr(metros) {
      energia = energia - metros / 2;
      return energia;
    }

    method comer(raton) {
      energia = energia + raton.peso() + 12;
      return energia;
    }

    method energiaConsumida(metros) = metros / 2;  

    method puedeCazarA(metros) {
      return energia >= self.energiaConsumida(metros);
    }

    method puedeCazar_A_(raton, metros) {

    if( self.puedeCazarA(metros)){ 
      self.correr(metros)
      self.comer(raton);}
    }

}

object jerry {
    const edadInicial = 2;

    var edad = edadInicial;

    method peso() = edad * 20;

    method cumpleAños() {
      edad = edad + 1
      return edad
    }
}

object nibbles {
    method peso() = 35; 
}

// Inventar otro ratón

object silvestre {

    const peso = 10;

    method edad() {
        return peso * 2;
    }
}
