//
//  PalindromeNumber.swift
//  AlgorithmTasks_project
//
//  Created by Stanislav BEREZIN on 22.05.2024.
//

class PalindromeNumber {
    
    /// на вход подается число
    /// если число читается одинаково слева направо - возвращаем true
    /// иначе false
    func isPalindrome(_ x: Int) -> Bool {
        var xString = String(x)
        guard xString.count >= 1 else { return false }
        
        while xString.count > 1 {
            if xString.first == xString.last {
                xString.removeFirst()
                xString.removeLast()
            } else {
                return false
            }
        }
        return true
    }
    
    /// вариант 2 без конвертации в строку
    func isPalindrome1(_ x: Int) -> Bool {
        var number = x
        var reversedNumber = 0

        while number > 0 {
            let rightDigit = number % 10
            reversedNumber = reversedNumber * 10 + rightDigit
            number /= 10
        }

        return reversedNumber == x
    }
}
