//
//  RemoveDublicatesFromSortedArrayTask.swift
//  AlgorithmTasks_project
//
//  Created by Stanislav BEREZIN on 30.05.2024.
//

class RemoveDublicatesFromSortedArrayTask {
    /// Нужно удалить дубликаты элементов в отсортированном массиве и вернуть
    /// количество элементов
    ///
    /// Массив должен быть отсортирован в порядке возрастания элементов
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else { return nums.count }
        
        var startIndex = 1
        var baseElement = nums.first
        
        while nums.indices.contains(startIndex) {
            if nums[startIndex] == baseElement {
                nums.remove(at: startIndex)
            } else {
                baseElement = nums[startIndex]
                startIndex += 1
            }
        }
        
        return nums.count
    }
    
    /// Условие такое же как и в методе func *removeDuplicates(_ nums: inout [Int]) -> Int*
    ///
    /// Данное решение реализовано через стандартную коллекцию Swift - Set
    /// Работает быстрее
    
    func removeDuplicates1(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else { return nums.count }
        nums = Array(Set(nums)).sorted()
        return nums.count
    }
}
