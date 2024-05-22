//
//  TwoSumTask.swift
//  AlgorithmTasks_project
//
//  Created by Stanislav BEREZIN on 22.05.2024.
//

class TwoSumTask {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        guard !nums.isEmpty else { return [] }
        
        for i in 0...nums.indices.endIndex {
            if i != nums.indices.endIndex {
                for j in (i+1)..<nums.indices.endIndex {
                    if nums[j] == target - nums[i] {
                        return [i, j]
                    }
                }
            }
        }
        
        return []
    }
}
