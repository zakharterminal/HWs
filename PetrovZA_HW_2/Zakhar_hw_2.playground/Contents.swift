import UIKit

//ex 2

var a : Int = 10    //Int
let aa : Int = 10

Int.max
UInt.max
Int.min
UInt.min

Int8.max
UInt8.max
Int8.min
UInt8.min

Int16.max
UInt16.max
Int16.min
UInt16.min

Int32.max
UInt32.max
Int32.min
UInt32.min

Int64.max
UInt64.max
Int64.min
UInt64.min

var b : Bool = true     //Bool
let bb : Bool = false

var c : Float = 2.2929       //Float
let cc : Float = 2.292

var d : Double = 2.40040404040      //Double
let dd : Double = 2.49499494

var e : String = "hi my dear friend!"       //String (255)
let ee : String = "nice to see u there!"

//ex 3

let f : Int = 2
let f1 : Double = 1.2
let f2 : Float = 2.1
let f3 = 4
let f4 = 1
let f5 = 2.32
let pi : Double = 3.14

let ff : Double = Double(f)+f1
let ff1 : Int = (f*Int(f1))/Int(f2)
let ff2 : Double = pi * Double(f)
let ff3 : Float = c + Float(a)
let ff4 : String = String(d)
let ff5 : Double = Double(f3 * f4)/pi
let ff6 : String = String(f1) + " " + e
let ff7 : String = String(f1) + " ; " + String(Int(f1) + f)

//ex4

let g = "\(ff2) * 3.2 = \(ff2 * 3.2)"   // *
let g1 = "\(f) + \(ff1) = \(f + ff1)"   // +
let g2 = "\(ff2) / pi = \(ff2 / pi)"    // /
let g3 = "6 - \(f) = \(6 - f)"          // -

//ex5

var isNight = true     //почему то не работает без объявления var или let
//isNight = false

if isNight {
    print("А чего не спим?")
} else {
    print("Добрый день! Солнце еще высоко;)")
}

//ex6

let str = "Отельчик а чего мы спим"

for chars in str {
    print(chars)
}

//ex7

let j = [13 , 2 , 20 , 21 , 76]

for number in j {
    if number % 2 == 0 {
        print(number,"четное")
    } else {
        print(number,"нечетное")
    }
}

//ex8

let k = 26   //число от 1 до 31, декады 1)1-10 2)11-20 3)21-31

if k <= 10 {
    print("первая декада")
} else if k <= 20{
    print("вторая декада")
} else if k <= 31 {
    print("третья декада")
} else {
    print("не глупи! столько дней в месяце нет!")
}
    
//ex 9

let mess = "aoidjadinanu"
let letter: Character = "a"

for (index, char) in mess.enumerated() {
    if index == 0 {
        if char == letter {
            print("yes")
        } else {
            print("no")
        }
        break
    }
}

//ex 10

let x = 1...9
let y = 1...9

for i in x {
    for ii in y {
        print(i, " * ", ii, "=" , i * ii)
    }
}
