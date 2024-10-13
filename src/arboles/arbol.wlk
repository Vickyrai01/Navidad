class Arbol {
    const regalos = #{}
    const tarjetas = #{}
    const adornos = []
    const umbralDePrecio
    
    method capacidad()

    method tieneEspacioParaRegalo() = regalos.size() < self.capacidad()
    
    method agregar(unRegalo) {
        if(!self.tieneEspacioParaRegalo()){
            throw new NoHayMasLugarEnElArbolException(message = "Este arbol ya esta lleno de regalos")
        }
        regalos.add(unRegalo)
    }

    method beneficiarios() = self.destinatariosDe(regalos) + self.destinatariosDe(tarjetas) 
    
    method destinatariosDe(unosPresentes) = unosPresentes.map({unPresente => unPresente.destinatario()})
    
    method costoTotal() = regalos.sum({unRegalo => unRegalo.precio()})

    method importanciaDeAdornos() = adornos.sum({unAdorno => unAdorno.importancia()})

    method esPortentoso() =  self.regalosParaPersonasMuyQueridas().size() > 5 || self.hayTarjetasCaras()

    method regalosParaPersonasMuyQueridas() = regalos.filter({unRegalo => unRegalo.esDelTipoTeQuierenMucho(umbralDePrecio)})

    method hayTarjetasCaras() = tarjetas.any({unaTarjeta => unaTarjeta.esCara()})
}
class NoHayMasLugarEnElArbolException inherits Exception{}