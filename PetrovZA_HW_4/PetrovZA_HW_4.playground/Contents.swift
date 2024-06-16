import UIKit

///Ex 1

//a
print("Ex.1a")

func helloWorld () {
    print("Hello, World!")
}

helloWorld()

//b
print("--------------------")
print("Ex.1b")

func Hi (_ name: String) {
    print("Hi \(name)")
}

print (Hi("Misha"))

//c
print("--------------------")
print("Ex.1c")

func greeting (name: String) -> String {
    return "Hello!" + " " + "\(name)"
}

print (greeting (name:"Zakhar"))

///Ex 2
print("--------------------")
print("Ex.2")


func nuberOfCharacters (_ Str1: String, _ Str2: String) -> Int {
    let numbOfChar1 = Str1.count
    let numbOfChar2 = Str2.count
    
    return numbOfChar1 + numbOfChar2
    
}

let Str1 = "sdsndsdhshdshd"
let Str2 = "sssssssssndsdhshdshd"

print (nuberOfCharacters(Str1, Str2))

///Ex 3
print("--------------------")
print("Ex.3")

func square (_ x: Double) -> Double {
    return x * x
}

print (square(25))

///Ex 4
print("--------------------")
print("Ex.4")

func sum (_ a: Int, _ b: Int) -> Int{
    return a + b
}

print("сумма=\(sum(2,1))")

func diff (_ a: Int, _ b: Int) -> Int{
    return a - b
}

print("разность=\(diff(5,2))")

func mult (_ a: Int, _ b: Int) -> Int{
    return a * b
}

print("спроизведение=\(mult(3,1))")

func div (_ a: Int, _ b: Int) -> Int{
    return a/b
}

print("деление=\(div(6,2))")

///Ex 5
print("--------------------")
print("Ex.5")

func sqr (_ r: Double) -> Double {
    print("радиус круга = \(r)")
    let rr: Double = square(r)
    print("площадь оккруга=")
    return 3.14 * rr
}

print (sqr(3))

///Ex 6
print("--------------------")
print("Ex.6")

func timeOfTheDay (_ isNight: Bool) -> String {
    if isNight {
        return "сейчас ночь"
    } else {
        return "сейчас день"
    }
}

print(timeOfTheDay(true))

///Ex 7
print("--------------------")
print("Ex.7")

func simpleNumb (_ x: Int) -> Bool {
    if x < 2 {
        return false
    }
    for i in 2..<x {
        if x % i == 0{
            return false
        }
    }
        return true
}

print(simpleNumb(4))

///Ex 8
print("--------------------")
print("Ex.8")

func timeOfTheYear (_ month: Int) -> String {
    switch month {
    case 1...2: 
        return "зима"
    case 3...5:
        return "весна"
    case 6...8:
        return "лето"
    case 9...11:
        return "осень"
    case 12:
        return "зима"
    default:
        return "неверный ввод"
    }
}

print(timeOfTheYear(2))

///Ex 9
print("--------------------")
print("Ex.9")

func factorial (_ n: Int) -> Int {
    if n == 0 {
        return 1
    }
    return n * factorial (n - 1)
}

print(factorial(3))

///Ex 10
print("--------------------")
print("Ex.10")
