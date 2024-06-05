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
        var lhsBound = 0
        var rhsBound = collection.indices.count - 1
        
        while lhsBound <= rhsBound {
            let midBound = (lhsBound + rhsBound) / 2
            
            if element == collection[midBound] {
                return midBound
            } else if element < collection[midBound] {
                rhsBound = midBound - 1
            } else if element > collection[midBound] {
                lhsBound = midBound + 1
            }
        }
        
        return nil
    }
}
