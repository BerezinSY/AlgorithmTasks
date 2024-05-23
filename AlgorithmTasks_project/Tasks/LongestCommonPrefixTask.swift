//
//  LongestCommonPrefixTask.swift
//  AlgorithmTasks_project
//
//  Created by Stanislav BEREZIN on 23.05.2024.
//

class LongestCommonPrefixTask {
    
    /// найти общий максимальный префикс элементов массива и вернуть его
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard !strs.isEmpty, strs.count <= 200 else { return "" }
        var baseElement = strs.first ?? ""
        
        for str in strs {
            guard str.count <= 200 else { return "" }
            let lowCasedStr = str.lowercased()
            while !lowCasedStr.hasPrefix(baseElement) {
                baseElement = "\(baseElement.dropLast())"
            }
        }
        
        return baseElement
    }
}
