//
//  RomanIntegerTask.swift
//  AlgorithmTasks_project
//
//  Created by Stanislav BEREZIN on 23.05.2024.
//

class RomanIntegerTask {
    
    /// в функцию подается римское число в виде строки
    /// нужно перевести число в Int и вернуть результат
    /// предусмотреть правила:
    /// I - вычитается если стоит перед V или X
    /// X - вычитается если стоит перед L или c
    /// C - вычитается если стоит перед D или M
    /// Ограничение:
    /// 1) 1 <= s.count <= 15
    /// 2) s содержит только characters
    func romanToInt(_ s: String) -> Int {
        guard !s.isEmpty, s.count <= 15 else { return 0 }
        var result = 0
        let strings = s.uppercased()
        var previousIntegerValue = 0
        
        for character in strings {
            let currentIntegerValue = dictionary[character] ?? 0
            if currentIntegerValue <= previousIntegerValue {
                result += previousIntegerValue
            } else {
                result -= previousIntegerValue
            }
            
            previousIntegerValue = currentIntegerValue
        }
        
        result += previousIntegerValue
        
        return result
    }
    
    private var dictionary: [Character: Int] {
        [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
    }
}
