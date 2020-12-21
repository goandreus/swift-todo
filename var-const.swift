import UIKit

var str = "Hello, playground"

// MARK: - Contastantes --> Su Valor No Cambia

let edadPersona = 32                  //Definicion Implicita
let nombrePerson: String = "Andres"     //Definicion Explicita

//edadPersona = edadPersona + 2

// MARK: - Variable --> Puedo Cambiar su Valor!!

var edadAlumno = 25
var edadProfesor = 30

let nuevaEdsdProfesor = Double (edadProfesor) + 0.5

// NIL = es NULO
// MARK: - OPTIONSL ? - este valor puede ser nulo(nil)

let edadTexto = "26"
var edad: Int? = Int(edadTexto)

// ! --> permite obtener el valor de un OPTIONAL (UNWRAP)

if  edad != nil {
    print("Mi edad es: \(edad!)")
}


// MARK: - FUNCIONES
// func nombreFuncion(ALIAS1 variable1: Tipo1, ALIAS2 variable2:Tipo2) -> TipoRetorno

func imprimir(unTexto text:String) /* -> Void */ {
    print(text)
}
imprimir(unTexto: "Hola gente")

func dividir(dividendo a:Int, divisor b:Int) -> Int {
    return a/b
}
let cociente = dividir(dividendo:12, divisor:4)
