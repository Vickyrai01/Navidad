import adorno.Adorno
class Luz inherits Adorno{
    const cantLamparitas
    
    method luminosidad() = cantLamparitas
    override method importancia() = super() *self.luminosidad()
}