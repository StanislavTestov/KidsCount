//
//  DataStruct.swift
//  KidsCount
//
//  Created by Stanislav Testov on 31.10.2022.
//

import Foundation

struct NumbersData {
    let firstNumber: Int
    let secondNumber: Int
    
    var rightAnswer: Int
    
    let operation = [Operations.minus, Operations.plus].randomElement()
    
    var answers = [Int]()
    
    mutating func rightAnswer(firstNumber: Int, secondNumber: Int, operation: Operations) {
        var answer: Int
        
        switch operation {
        case .plus:
            answer = firstNumber + secondNumber
        case .minus:
            answer = firstNumber - secondNumber
        }
        
        rightAnswer = answer
        
        answers.append(answer)
        
    }
    
    mutating func wrongAnswerOne(firstNumber: Int, secondNumber: Int, operation: Operations) {
        var answer: Int
        
        switch operation {
        case .plus:
            answer = firstNumber + secondNumber
        case .minus:
            answer = firstNumber - secondNumber
        }
        
        answer += 1
        answers.append(answer)
    }
    
}
