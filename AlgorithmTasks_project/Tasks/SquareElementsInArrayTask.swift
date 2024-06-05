//
//  SquareElementsInArrayTask.swift
//  AlgorithmTasks_project
//
//  Created by Stanislav BEREZIN on 04.06.2024.
//

class SquareElementsInArrayTask {
    
    /// На вход подается отсортированный массив целых чисел
    ///
    /// Числа могут быть как положительные так и отрицательные
    /// 
    /// Нужно вернуть новый массив, который содержит в себе квадраты чисел
    /// исходного массива
    ///
    /// **Условие:**
    ///
    /// Новый массив должен быть отсортированным
    ///
    /// Пример:
    ///
    /// [-5, 1, 2, 3, 4, 5, 6] - исходный массив
    ///
    /// [1, 4, 9, 16, 25, 25, 36] - результат
    
    func squareArray(array: [Int]) -> [Int] {
        guard !array.isEmpty else { return [] }
        var result: [Int] = []
        
        array.forEach { element in
            let square = element*element
            
            let task = SearchInsertPositionTask()
            let index = task.searchInsert(result, square)
            result.insert(square, at: index)
            
        }
        
        return result
    }
}
