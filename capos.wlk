object rolando {

    var property mochila   = #{} 
    var property capacidad = 2
    var property hogar     = castillo
    const historial = []

    method encontrar(artefacto) {
        if (mochila.size() < capacidad) {
            mochila.add(artefacto)
        }
        historial.add(artefacto)
    }

    method irAHogar() {
        hogar.almacenar(mochila)
        mochila.clear()    
    }

    method posesiones() {
        return (hogar.cofre() + mochila)
    }

    method posee(artefacto) {
        return (self.posesiones().contains(artefacto))
    }

    method artefactoEnHistorial(indice) {
        return historial.get(indice)
    }

    method historial() {
        return historial
    }
}

object castillo {

    var property cofre = #{}

    method almacenar(artefactos) {
        cofre.addAll(artefactos)
    }

}

object espada {

}

object libro {

}

object collar {

}

object armadura {

}