import arbol.Arbol
class Natural inherits Arbol{
    var vejez
    const tamanioTronco

    override method capacidad() = vejez * tamanioTronco 
}