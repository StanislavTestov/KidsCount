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
    
    @State private var scale = 1.0
    @State private var showAlert = false
    
    var body: some View {
        HStack {
            Text("\(String(firstNumber)) \(operation.rawValue) \(String(secondNumber)) =")
            Image(systemName: "questionmark.circle.fill")
                .foregroundStyle(.red, .blue)
                .scaleEffect(scale)
                .onAppear {
                    let baseAnimation = Animation.easeIn(duration: 1)
                    let repeated = baseAnimation.repeatForever(autoreverses: true)
                    
                    withAnimation(repeated) {
                        scale = 1.5
                    }
                }
                .onTapGesture {
                    showAlert = true
                }
        }
        .font(.system(size: 44))
        .fontWeight(.bold)
        .alert("Ha - ha!", isPresented: $showAlert) {
            Button("OK", role: .destructive) { }
            Button("Yep", role: .none) { }
        } message: {
            Text("Don't know!!!")
        }
        
    }
}

struct NumbersForCount_Previews: PreviewProvider {
    static var previews: some View {
        NumbersForCount()
    }
}
