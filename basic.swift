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

func dividir(dividendo :Int, divisor :Int) -> Int { // EL ALIAS ES LA VARIABLE
    return dividendo/divisor
}
let cociente = dividir(dividendo:12, divisor:4)

func suma(_ A:Int, _ B:Int) -> Int{
    return A + B
}

let sumaRpta = suma (1, 2)

//MARK: - Clases  no es una es STRUCT

class Persona {
    //Propiedades
    var nombre: String = ""
    
    //Metodos
    func imprimirDatos() {
        print("\(nombre)")
    }
}

// STRUCT
// --> Es mucho mas rapido que una clase
// --> Va por Valor
// Una STRUC no hereda, A menos que sea un PROTOCOL

struct Alumno {
    var nombre: String = ""
    var edad: Int = 0
    
    func imprimirDatos(){
        print("\(nombre) \(edad)")
    }
}

var estudiante = Alumno()
estudiante.nombre = "Andres"
//CLASS
// --> Es mas lento que un STRUCT
// --> var por referencia
// --> Tienen herencia de class o protocol

class Profesor: Persona{
    //Propiedades
    var edad: Int = 0
    
    // Sobreescribir
    override func imprimirDatos() {
        print("\(edad)")
    }
    
}
let tutor  = Profesor()
tutor.nombre = "Andres"

class Curso {
    var titulo: String
    var maestro: Profesor
    var estudiantes: [Alumno]
    
    //CONSTRUCTOR --> INIT
    
    init(){
        
        //this == self
        self.titulo = ""
        self.maestro = Profesor()
        self.estudiantes = []
    }
    
    init (titulo: String,maestro: Profesor, estudiantes: [Alumno]){
        self.titulo = titulo
        self.maestro = maestro
        self.estudiantes = estudiantes
    }
}

let iosBasico = Curso(titulo: "ios", maestro: tutor, estudiantes: [estudiante])
let unCurso = Curso()

//MARK -  IF LET -- SE UTILIZA PARA VALIDAR OPTINAL

let numeroString = "123"

//! --> permite obtener el valor de un OPTIONAL (UNWARP)

//version 1
let numeroConvertido = Int(numeroString)
if numeroConvertido != nil {
    let numeroUNWRAP = numeroConvertido!
    print("v1 El numero es: \(numeroUNWRAP)")
}

//version 2
let numeroConvertido2 = Int(numeroString)
if let numeroUNWRAP = numeroConvertido2{
    print("v2 El numero es: \(numeroUNWRAP)")
}

//version 3
if let numeroUNWRAP = Int(numeroString){
    print("v3 El numero es: \(numeroUNWRAP)")
}

//MARk: - GUARD -- SE UTILIZA PARA VALIDAR OPTIONAL

func convertirEntero(elTexto texto: String) -> Int{
    //Patron Dorado --> Valida lo que no la ruta critica, si no de la ruta critica haz un return
    
    if texto.isEmpty{
        return 0
    }
    if texto.contains(".") {
        return 0
    }
    guard let numero = Int(texto) else {
        return 0
    }
    return numero

    
    
//    if !texto.isEmpty {
//        if !texto.contains("."){
//            if let numero = Int (texto){
//                return numero
//            }else {
//                return 0
//            }
//        }else {
//            return 0
//        }
//    }else {
//        return 0
//    }
}
