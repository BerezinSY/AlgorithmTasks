//
//  SearchInsertPositionTask.swift
//  AlgorithmTasks_project
//
//  Created by Stanislav BEREZIN on 05.06.2024.
//

class SearchInsertPositionTask {
    
    /// На вход подается отсортированный массив и некоторое число
    ///
    /// Необходимо вернуть индекс в который необходимо вставить элемент target
    /// таким образом чтобы порядок сортировки массива не нарушался
    ///
    /// **Например:**
    ///
    /// Input: nums = [1, 3, 5, 6], target = 2
    ///
    /// Output: 1
    
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        guard !nums.isEmpty else { return 0 }
        var lhsBound = 0
        var rhsBound = nums.indices.count
        
        while lhsBound < rhsBound {
            let midBound = (lhsBound + rhsBound) / 2
            
            if target < nums[midBound] {
                rhsBound = midBound
            } else if target > nums[midBound] {
                lhsBound = midBound + 1
            } else if target == nums[midBound] {
                return midBound
            }
        }
        
        return lhsBound
    }
}
