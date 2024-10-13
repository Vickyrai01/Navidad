import adorno.Adorno
class Guirnalda inherits Adorno{
    const anioDeCompra

    override method peso() = peso - 100 * self.aniosDeUso()

    method aniosDeUso() = new Date().year() - anioDeCompra
    
    override method importancia() = self.peso() * coeficienteDeSuperioridad 
}