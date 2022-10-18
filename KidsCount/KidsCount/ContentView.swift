//
//  ContentView.swift
//  KidsCount
//
//  Created by Stanislav Testov on 19.10.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Background()
            NumbersForCount()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
