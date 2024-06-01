//
//  BinarySearchTask.swift
//  AlgorithmTasks_project
//
//  Created by Stanislav BEREZIN on 01.06.2024.
//

import Foundation

class BinarySearchTask {
    
    /// На вход подается массив и искомый элемент в этом массиве
    ///
    /// Если элемент найден то функция возвращает индекс найденного элемента
    /// Если элемента в массиве нет = возвращаем nil
    
    func binarySearch(element: Int, in collection: [Int]) -> Int? {
        var leftBound = 0
        var rightBound = collection.indices.count - 1
        
        while leftBound <= rightBound {
            let middleBound = (leftBound + rightBound) / 2
            
            if element == collection[middleBound] {
                return middleBound
            } else if element < collection[middleBound] {
                rightBound = middleBound - 1
            } else if element > collection[middleBound] {
                leftBound = middleBound + 1
            }
        }
        
        return nil
    }
}
