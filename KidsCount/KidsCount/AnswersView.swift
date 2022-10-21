//
//  AnswersView.swift
//  KidsCount
//
//  Created by Stanislav Testov on 21.10.2022.
//

import SwiftUI

struct AnswersView: View {
    let answers = [1, 2, 3, 4]
    
    var body: some View {
        HStack {
            ForEach(0..<4) { answer in
                Text(String(answers[answer]))
            }
        }
    }
}

struct AnswersView_Previews: PreviewProvider {
    static var previews: some View {
        AnswersView()
    }
}
