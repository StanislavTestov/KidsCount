//
//  KidsCountApp.swift
//  KidsCount
//
//  Created by Stanislav Testov on 16.10.2022.
//

import SwiftUI

@main
struct KidsCountApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
