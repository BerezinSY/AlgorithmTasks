//
//  ValidParenthesesTask.swift
//  AlgorithmTasks_project
//
//  Created by Stanislav BEREZIN on 23.05.2024.
//

class ValidParenthesesTask {
    /// Метод определяет есть ли у элемента строки своя корректная пара и возвращает true / false в зависимости от результата
    ///
    /// На вход подаются символы "() [] {}".
    /// Они могут подаваться парами или без пары, либо пара не соответствует.
    ///
    /// **Условие:**
    ///
    /// Если подается "() [] {}" / "()" / "[]" / "{}" или другие комбинации - возвращаем true
    ///
    /// Если подается "(} [] {}" / "(} [ {}" / "(} [{ {}" / или что то в это роде - возвращаем false
    ///
    /// Если массив пустой - возвращаем false
    
    func isValid(_ s: String) -> Bool {
        guard !s.isEmpty, s.count % 2 == 0 else { return false }
        var characters: [Character] = []
        
        for element in s {
            switch element {
            case "(":
                characters.append(")")
            case "{":
                characters.append("}")
            case "[":
                characters.append("]")
            default:
                if characters.isEmpty || characters.removeLast() != element {
                    return false
                }
            }
        }
        return characters.isEmpty
    }
}
