import UIKit

print ("ENUM С ВРЕМЕНЕМ ГОДА")
print ("-------------------------------------------------")

enum TimeOfTheYear {
    case winter
    case spring
    case summer
    case fall
}

var today = TimeOfTheYear.summer
print(today)

print(" ")
print(" ")
print ("ФУНКЦИЯ С ВОЗВРАТОМ ЕНАМА ВРЕМЕНИ ГОДА")
print ("-------------------------------------------------")

//func whatTime (_ month: Int) -> TimeOfTheYear {
//    if month == 1 && month == 2 && month == 12 {
//        return .winter
//    } else if month == 3 && month == 4 && month == 5 {
//        return .spring
//    } else if month == 6 && month == 7 && month == 8 {
//        return .summer
//    } else if month == 9 && month == 10 && month == 11 {
//        return .fall
//    }
//}

func whatTime (for month: Int) -> TimeOfTheYear? {
    switch month {
    case 12, 1, 2:
        return .winter
    case 3, 4, 5:
        return .spring
    case 6, 7, 8:
        return .summer
    case 9, 10, 11:
        return .fall
    default:
        return nil
    }
}

if let m = whatTime(for: 5) {
    print (m)
} else {
    print ("there is no such month")
}

print(" ")
print(" ")
print ("МЕТОД ПРИЕМА ПЕРЕОДИЧЕСКОГО ЗНАЧЕНИЯ")
print ("-------------------------------------------------")

func filtr (_ strings: String?...) -> (nilCount: Int, finalString: String) {
    var nilCount = 0
    var finalString = ""
    
    for string in strings {
        if let trueString = string {
            finalString += trueString
        } else {
            nilCount += 1
        }
    }
    print (finalString)
    return (nilCount, finalString)
}

let x = filtr ("hi ", nil, "my name ", nil, "is ", nil, "Zakhar!")
print("number of nil values in <X> : \(x.nilCount)")
