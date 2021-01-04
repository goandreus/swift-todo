import UIKit

var str = "Hello, playground"

// MARK: - Constantes LET --> SU VALOR NO CAMBIA!
let edadPersona = 32                    // Definición Implicita
let nombrePersona: String = "Andres"    // Definición Explicita

//edadPersona = edadPersona + 2

// MARK: - Variable VAR --> PUEDO CAMBIAR SU VALOR!!
var edadAlumno = 25                     // Definición Implicita
var edadProfesor: Int = 31           // Definición Explicita

edadAlumno += 2
edadProfesor += 5

let nuevaEdadProfesor = Double(edadProfesor) + 0.5

// NIL = es NULO
// MARK: - OPTONAL ? --> Este valor puede ser NULO (NIL)
let edadTexto = "32"
var edad: Int? = Int(edadTexto)

// ! --> permite obtener el valor de un OPTINAL (UNWARP)
if edad != nil {
    print("Mi edad es: \(edad!)")
} else {
    print("No se puede convertir la edad texto a entero")
}

// MARK: - Funciones
//
// func nombreFuncion(ALIAS1 variable1:Tipo1, ALIAS2 variable2:Tipo2) -> TipoRetorno
//

func imprimir(unTexto texto:String) /* -> Void */ {
    print(texto)
}
imprimir(unTexto: "Hola chicos bienvenidos a Swift")


func dividir(dividendo:Int, divisor:Int) -> Int { // El ALIAS ES LA VARIABLE
    return dividendo / divisor
}
let cociente = dividir(dividendo: 12, divisor: 5)

// El _ significa que no tendremos alias
func suma(_ A:Int, _ B:Int) -> Int {
    return A + B
}
let sumaRpta = suma(1, 2)


// MARK: - Clases NO ES Struct

// STRUCT
// --> Es mucho mas rapido que una clase
// --> Va por VALOR
// --> No tiene herencia. A menos que sea un PROTOCOL
struct Alumno {
    // Propiedades
    var nombre: String = ""
    var edad: Int = 0
    
    // Propiedad calculada --> Computed Property --> GET ONLY
    var edadEn10anhos: Int {
        return edad + 10
    }
    
    // Metodos
    func imprimirDatos() {
        print("\(nombre) \(edad)")
    }
}

var estudiante = Alumno()
estudiante.nombre = "Ismael"

// CLASS
// --> Es mas lento que un STRUCT
// --> var por refrencia
// --> Tienen herencia de Class o Procol
class Persona {
    
    // Propiedades
    var nombre: String = ""
    
    // Metodo
    func imprimirDatos() {
        print("\(nombre)")
    }
}

class Profesor: Persona {
    // Propiedades
    var edad: Int = 0
    
    override func imprimirDatos() {
        print("\(nombre) \(edad)")
    }
}

let tutor = Profesor()
tutor.nombre = "Andres"

class Curso {
    
    // Propiedes
    var titulo: String
    var maestro: Profesor
    var estudiantes: [Alumno]
    
    // CONSTRUCTOR --> INIT
    init() {
        // this == self
        self.titulo = ""
        self.maestro = Profesor()
        self.estudiantes = []
    }
    
    init(titulo: String, maestro: Profesor, estudiantes: [Alumno]) {
        self.titulo = titulo
        self.maestro = maestro
        self.estudiantes = estudiantes
    }
}

let iosBasico = Curso(titulo: "iOS", maestro: tutor, estudiantes: [estudiante])
let unCurso = Curso()

// MARK: - IF LET -- SE UTILIZA PARA VALIDAR OPTINAL
let numeroString = "123"

// Version 1
let numeroConvertido = Int(numeroString)
if numeroConvertido != nil {
    let numeroUNWRAP = numeroConvertido!
    print("v1 El número es: \(numeroUNWRAP)")
}

// Version 2
let numeroConvertido2 = Int(numeroString)
if let numeroUNWRAP = numeroConvertido2 {
    print("v2 El número es: \(numeroUNWRAP)")
}

// Version 3
if let numeroUNWRAP = Int(numeroString) {
    print("v3 El número es: \(numeroUNWRAP)")
}

// MARK: - GUARD -- SE UTILIZA PARA VALIDAR OPTINAL
func converirAEntero(elTexto texto:String) -> Int {
    // Patron Dorado --> Valida lo que no es el ruta critica, si no es de la ruta critica haz un return
    if texto.isEmpty {
        return 0
    }
    if texto.contains(".") {
        return 0
    }
    guard let numero = Int(texto) else {
        return 0
    }
    return numero
}

// MARK: - FOR --> siempre se ejecuta como un FOR EACH
// for (int i=0; i<10; i++) <--- NO EXISTE EN SWIFT
// i++ <---- NO existe en SWIFT
var i = 0
i += 1
let final = 4

let range = 0..<10      // Range<Int> que omite el último valor
let range2: ClosedRange<Int> = i...final  // ClosedRange<Int> porque cuenta al último valor
for indice in range2 {
    print(indice)
}

let nombreProfesor = "Andres Chavez"
let endIndex = nombreProfesor.index(nombreProfesor.startIndex, offsetBy: 4)
nombreProfesor[nombreProfesor.startIndex...endIndex]

// MARK: - SWITCH
let asistenciaEnClase = 4
switch asistenciaEnClase {
case 0..<4:
    print("Jalo el curso por inasistencias")
case 4...8:
    print("Debe dar un examen")
default:
    print("Valor incorrecto")
}

let simbolo = "+"
switch simbolo {
case "+":
    print("Suma")
case "-":
    print("Resta")
case "*":
    print("Multiplicación")
case "/":
    print("División")
default:
    print("NO ES OPERACIÓN")
}

// MARK: - ENUMS --> EN EL FONDO ES UN STRUCT
// No tiene propideades de almacenamiento
// Si tiene propiedades calculadas (GET ONLY o Computed Properties)
// Si tiene Métodos (func)

// EMNUM TIPO 1 --> El enum SIMPLE o ENUM VAINILLA
enum DiaDeSemana {
    case lunes
    case martes
    case miercoles
    case jueves
    case viernes
    case sabado
    case domingo
}

func almuerzo(delDia dia: DiaDeSemana) -> String {
    switch dia {
    case .lunes, .miercoles:
        print("Dias de cocina rapida")
        return "Tallarines Rojos"
        
    case .martes:
        print("Dia de menesta y pescado")
        return "Frejoles con pescado"
        
    case .jueves:
        return "Jueves de Pavita"
        
    case .viernes:
        return "Lomo Saltado"
        
    case .sabado, .domingo:
        return "Pollo a la brasa"
    }
}

var ayer = DiaDeSemana.lunes        // Definición Implicita
var hoy: DiaDeSemana = .martes      // Definición explicita
let plato = almuerzo(delDia: .martes)

// EMNUM TIPO 2 --> El enum RAW VALUE
enum Operacion: String {
    case suma = "+"
    case resta = "-"
    case multiplicacion = "*"
    case division = "/"
    
    func operar(numeroA a:Int, numeroB b:Int) -> Int {
        switch self {
        case .suma:
            return a + b
        case .resta:
            return a - b
        case .multiplicacion:
            return a * b
        case .division:
            return a / b
        }
    }
}

var laOperacion: Operacion = .suma
print("Mi operacion se llama \(laOperacion) con el símbolo \(laOperacion.rawValue)")

if let nuevaOperacion = Operacion(rawValue: "*") {
    print("Mi nueva operacion se llama \(nuevaOperacion) con el símbolo \(nuevaOperacion.rawValue)")
    
    let resultadoOperacion = nuevaOperacion.operar(numeroA: 4, numeroB: 2)
    print(resultadoOperacion)
}

enum TipoTarjeta: Int {
    
    case visa = 0
    case mastercard = 1
    case diners = 2
    
    var imagen: UIImage? {
        switch self {
        case .visa:
            return UIImage(named: "visa")
        case .mastercard:
            return UIImage(named: "mastercard")
        case .diners:
            return UIImage(named: "diners")
        }
    }
}

// EMNUM TIPO 3: VALORES ASOCIADOS
enum Acciones {
    case caminar(Int, Int)
    case atacar(String, Int)
    case recolectar(Int)
    case descanzar
}

struct Personaje {
    var nombre: String = ""
    var vida: Int = 100
    var ataque: Int = 2
    var posicion: CGPoint = CGPoint(x: 0, y: 0)
    
    mutating func ejecutar(accion: Acciones) {
        switch accion {
        case .caminar(let x, let y):
            posicion.x += CGFloat(x)
            posicion.y += CGFloat(y)
        
        case .atacar(let enemigo, let vidaEnemigo):
            print("Ataco al enemigo \(enemigo): \(vidaEnemigo - ataque)")
        
        case .recolectar(let item):
            vida += item
            
        case .descanzar:
            vida += 1
        }
    }
}

var avatar = Personaje()
avatar.ejecutar(accion: .caminar(2, 3))
avatar.ejecutar(accion: .recolectar(90))
avatar.ejecutar(accion: .atacar("Steve", 200))

