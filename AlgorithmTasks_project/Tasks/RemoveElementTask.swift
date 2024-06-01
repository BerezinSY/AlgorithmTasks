//
//  RemoveElementTask.swift
//  AlgorithmTasks_project
//
//  Created by Stanislav BEREZIN on 01.06.2024.
//

class RemoveElementTask {
    /// Нужно удалить элементы из массива которые равны аргументу val
    ///
    /// Ограничения:
    ///
    /// 0 <= nums.count <= 100
    ///
    /// 0 <= nums[i] <= 50
    ///
    /// 0 <= val <= 100
    
    
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        guard !nums.isEmpty else { return 0 }
        
        
        guard nums.count <= 100 else {
            print("nums.lenght > 100, you should decrease nums.lenght")
            return 0
        }
        
        
        guard val >= 0 || val <= 100 else {
            print("the val must be equal between 0...100")
            return 0
        }
        
        var startIndex = 0
        
        while nums.indices.contains(startIndex) {
            guard nums[startIndex] >= 0 || nums[startIndex] <= 50 else {
                print("Element of the collection must be equal 0...50")
                return 0
            }
            
            if nums[startIndex] == val {
                nums.remove(at: startIndex)
            } else {
                startIndex += 1
            }
        }
        
        return nums.count
    }
    
    /// Условия те же, что и в func removeElement(_ nums: inout [Int], _ val: Int) -> Int
    ///
    /// Данное решение сделано через нативный метод в библиотеке Swift
    /// Должно быстрее работать
    func removeElement1(_ nums: inout [Int], _ val: Int) -> Int {
        nums.removeAll(where: { $0 == val })
        return nums.count
    }
}
