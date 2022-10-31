//
//  DataStruct.swift
//  KidsCount
//
//  Created by Stanislav Testov on 31.10.2022.
//

import Foundation

struct NumbersData {
    let firstNumber = Int.random(in: 1...10)
    let secondNumber = Int.random(in: 1...10)
    
    var rightAnswer: Int = 0
    
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
