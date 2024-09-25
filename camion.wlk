import cosas.wlk*

object camion {
    var property cosas= bumblebee
    
    method peso() {
        
    }
    method nivelPeligrosidad(unNivelPeligrosidad){
        return cosas.find( { c => c.peligrosidad() == nivelPeligrosidad
    }
    method cosasQueSUperan(nivelPeligrosidad){
        return cosas.filter({ c => c.peligrosidad() > nivelPeligrosidad })
    }
    method cosasQueSuperanA(unaCosa){
        return self.cosasQueSUperan(unacosa.peligrosidad())
    }
    method estaExcedido(){
        return peso() > 2500
    }    
    method puedeCircular(unNivelPeligrosidad){
        return self.!estaExcedido 
        &&
        self.cosasQueSuperan(unNivelPeligrosidad).isEmpty 
    }
    method cargar(unaCosa){
        cosas = unaCosa
        cosas.consecuencia()
    }
}
