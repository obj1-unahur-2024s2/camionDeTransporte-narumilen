object knightRider {
    method peso() = 800
    method peligrosidad() = 10
    method bultos()= 1
    method consecuencia(){}
}

object bumblebee{
    var estaRobot = true 
    method peso() = 800
    method transformarse() {
        transformado = !transformado
    }
    method peligrosidad()= if(estaRobot) 30 else 15 
    method bultos()= 2
    method consecuencia(){
        estaRobot = !estaRobot
    }
}

object paqueteDeLadrillos{
    var property ladrillos = 0

    method peso() = ladrillos *2
    method peligrosidad()= 2
    method bultos(){
        if (ladrillos.between(0,100) return 1
        if (ladrillos.between(101,300) return 2
        return 3
    }
    method consecuencia(){
        cantidad = cantidad +12
    }
}

object arenaGranel{
    var property peso = 0
    method peligrosidad() = 1
    method bultos()= 1
    method consecuencia(){
        peso= 0.max(peso -10)
    }
}

object bateriaAntiaerea{
    var estaConMisiles = true
    method peso() = if (estaConMisiles) 300 else 200
    method peligrosidad() = if (estaConMisiles) 100 else 0
    method bultos()= if (estaConMisiles) 2 else 1
    method cargar(){
        estaConMisiles = true
    }
    method consecuencia(){
        self.cargar
    }
}

object contenedorPortuario{
    const cosasAdentro = []
    method agregarUnaCosa(unaCosa) {
        cosasAdentro.add(unaCosa)
    }
    method peso(){
        return 100 + cosasAdentro.sum({ c => c.peso() })
    }
    method peligrosidad(){
        if (cosasAdentro.isEmpty) return 0
        return cosasAdentro.max({ c => cosasAdentro.peligrosidad() }).peligrosidad()
    }
    method bultos(){
        1 + cosasAdentro.sum({c => c.bultos()})
    }
    method consecuencia(){
        cosas.forEach({c=>c.consecuencia())
    }
}

object residuosRadioactivos{
    var property peso= 0

    method peligrosidad()= 200
    method bultos()= 1
    method consecuencia(){
        peso = peso + 15
    }
}

object embalajeDeSeguridad{
    var property cosaAdentro = cosaNull
    method peso() = cosaAdentro.peso()
    method peligrosidad() = cosaAdentro.peligrosidad()/2
    method bultos()= 2
    method consecuencia(){}
}

object cosaNull{
    method peso() = 0
    method peligrosidad()= 0
}









