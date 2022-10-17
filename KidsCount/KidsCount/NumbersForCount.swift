//
//  NumbersForCount.swift
//  KidsCount
//
//  Created by Stanislav Testov on 16.10.2022.
//

import SwiftUI

struct NumbersForCount: View {
    let firstNumber = 3
    let secondNumber = 7
    let operation = Operations.plus
    
    var body: some View {
        HStack {
            Text("\(String(firstNumber)) \(operation.rawValue) \(String(secondNumber)) =")
        }
        
    }
}

struct NumbersForCount_Previews: PreviewProvider {
    static var previews: some View {
        NumbersForCount()
    }
}
