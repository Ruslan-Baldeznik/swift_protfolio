protocol HomeworkService {
    // Функция деления с остатком, должна вернуть в первой части результат деления, во второй части остаток.
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int)

    // Функция должна вернуть числа фибоначчи.
    func fibonacci(n: Int) -> [Int]

    // Функция должна выполнить сортировку пузырьком.
    func sort(rawArray: [Int]) -> [Int]

    // Функция должна преобразовать массив строк в массив первых символов строки.
    func firstLetter(strings: [String]) -> [Character]

    // Функция должна отфильтровать массив по условию, которое приходит в параметре `condition`. (Нельзя юзать `filter` у `Array`)
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int]
}

struct the_struct{
    // Функция деления с остатком, должна вернуть в первой части результат деления, во второй части остаток.
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int){
        let answer_1: Int = x / y
        let answer_2: Int = x - answer_1 * y
        return (answer_1, answer_2)
    }

    // Функция должна вернуть числа фибоначчи.
    func fibonacci(n: Int) -> [Int]{
        var array: [Int] = [0]
        var input: Int = 1
        for i in 0..<n{
            array.append(input)
            input = array[i] + input
        }
        return array
    }

    // Функция должна выполнить сортировку пузырьком.
    func sort(rawArray: [Int]) -> [Int]{
    var returned_array = rawArray
        var test = false
        while test {
            test = false
            for i in 0..<returned_array.count {
                if returned_array[i] > returned_array[i + 1]{
                    test = true
                    let helper = returned_array[i]
                    returned_array[i] = returned_array[i + 1]
                    returned_array[i + 1] = helper
                    
                }
            }
        }
        return returned_array
    }

    // Функция должна преобразовать массив строк в массив первых символов строки.
    func firstLetter(strings: [String]) -> [Character] {
        var mutated_array: [Character] = []
        var new_element: Character = "A"
        for element in strings {
            new_element = Array(element)[0]
            mutated_array.append(new_element)
        }
        print(mutated_array)
        return mutated_array
    }

    // Функция должна отфильтровать массив по условию, которое приходит в параметре `condition`. (Нельзя юзать `filter` у `Array`)
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int]{
        var new_array: [Int] = []
        for element in array
        {
        if condition(element) == true{
            new_array.append(element)
        }}
        return new_array
    }
}
var some_struct = the_struct()
var some_string = ["qwe","rty","uio","prt"]
some_struct.firstLetter(strings: some_string)
