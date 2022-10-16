//
//  Background.swift
//  KidsCount
//
//  Created by Stanislav Testov on 16.10.2022.
//

import SwiftUI

struct Background: View {
    var body: some View {
        LinearGradient(colors: [.yellow, .green], startPoint: .top, endPoint: .bottom)
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
