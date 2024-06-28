import UIKit

class Person {
    var name : String
    var surname : String
    var age : Int
    
    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
}



class Student : Person {
    var grade : Int
    var subjects : [(String, Int)]
    
    init(grade: Int, subjects: [(String, Int)], name: String, surname: String, age: Int) {
        self.grade = grade
        self.subjects = subjects
        super.init(name: name, surname: surname, age: age)
    }
    
    func studentInfo() -> String {
        var info = "\(surname) \(name) (\(grade) Класс)\n"
        for subject in subjects {
            info += "\(subject.0): \(subject.1)\n"
        }
        return info
    }
}



class Director: Person {
    var experience: Int
    var rating: Double
    
    init(name: String, surname: String, age: Int, experience: Int, rating: Double) {
        self.experience = experience
        self.rating = rating
        super.init(name: name, surname: surname, age: age)
    }
}



class Address {
    var x: Double
    var y: Double
    var streetName: String
    
    init(x: Double, y: Double, streetName: String) {
        self.x = x
        self.y = y
        self.streetName = streetName
    }
}



class School {
    var students: [Student]
    var schoolName: String
    var address: Address
    var director: Director
    
    init(students: [Student], schoolName: String, address: Address, director: Director) {
        self.students = students
        self.schoolName = schoolName
        self.address = address
        self.director = director
    }
    
    func schoolInfo() -> String {
        var info = "Название школы: \(schoolName)\n"
        info += "Адрес: \(address.streetName), координаты: (\(address.x), \(address.y))\n"
        info += "Директор: \(director.name) \(director.surname), опыт: \(director.experience) лет, рейтинг: \(director.rating)\n"
        info += "Ученики:\n"
        for student in students {
            info += student.studentInfo()
        }
        return info
    }
}
    
    
