import UIKit

//1. Создание массивов и их объединение
print("1. Создание массивов и их объединение")
print("-------------------------------------------------")
print(" ")

let array1 = Array(0...14)
let array2 = Array(14...30)

let combinedArray = array1 + array2

print("Первый массив: \(array1)")
print("Второй массив: \(array2)")
print("Объединенный массив: \(combinedArray)")

print(" ")
//2. Функция для возведения элементов массива в квадрат
print("2. Функция для возведения элементов массива в квадрат")
print("-------------------------------------------------")
print(" ")

func squareElements(in array: [Int]) -> [Int] {
    return array.map { $0 * $0 }
}

let squaredArray = squareElements(in: combinedArray)
print("Квадраты элементов: \(squaredArray)")

print(" ")
//3. Функция для возврата массива только с четными элементами
print("3. Функция для возврата массива только с четными элементами")
print("-------------------------------------------------")
print(" ")

func evenElements(in array: [Int]) -> [Int] {
    return array.filter { $0 % 2 == 0 }
}

let evenArray = evenElements(in: combinedArray)
print("Четные элементы: \(evenArray)")

print(" ")
//4. Примеры использования .map
print("4. Примеры использования .map")
print("-------------------------------------------------")
print(" ")

//Увеличение каждого элемента на 1
let incrementedArray = combinedArray.map { $0 + 1 }
print("Увеличенные элементы на 1: \(incrementedArray)")

//Преобразование в строки
let stringArray = combinedArray.map { "\($0)" }
print("Элементы в виде строк: \(stringArray)")

//Удвоение элементов
let doubledArray = combinedArray.map { $0 * 2 }
print("Удвоенные элементы: \(doubledArray)")

print(" ")
//5. Примеры использования .filter
print("5. Примеры использования .filter")
print("-------------------------------------------------")
print(" ")

//Элементы больше 20
let greaterThanTwentyArray = combinedArray.filter { $0 > 20 }
print("Элементы больше 20: \(greaterThanTwentyArray)")

//Элементы меньше 10
let lessThanTenArray = combinedArray.filter { $0 < 10 }
print("Элементы меньше 10: \(lessThanTenArray)")

print(" ")
//6. Примеры использования .compactMap
print("6. Примеры использования .compactMap")
print("-------------------------------------------------")
print(" ")

// Преобразование строк в Int, игнорируя nil
let stringNumbers = ["1", "2", "a", "3"]
let intArray = stringNumbers.compactMap { Int($0) }
print("Числовой массив из строк: \(intArray)")

//Преобразование элементов в строки, игнорируя nil
let optionalNumbers: [Int?] = [1, nil, 2, 3, nil, 4]
let nonNilNumbers = optionalNumbers.compactMap { $0 }
print("Массив без nil значений: \(nonNilNumbers)")

print(" ")
//7. Примеры использования .sort
print("7. Примеры использования .sort")
print("-------------------------------------------------")
print(" ")

var unsortedArray = [5, 3, 8, 6, 2]
unsortedArray.sort()
print("Отсортированный массив: \(unsortedArray)")

var reverseArray = [5, 3, 8, 6, 2]
reverseArray.sort(by: >)
print("Отсортированный массив в обратном порядке: \(reverseArray)")

print(" ")
//8. Примеры использования .sorted
print("8. Примеры использования .sorted")
print("-------------------------------------------------")
print(" ")

let sortedArray = [5, 3, 8, 6, 2].sorted()
print("Отсортированный массив: \(sortedArray)")

let reverseSortedArray = [5, 3, 8, 6, 2].sorted(by: >)
print("Отсортированный массив в обратном порядке: \(reverseSortedArray)")
