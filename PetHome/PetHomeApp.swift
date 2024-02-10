//
//  PetHomeApp.swift
//  PetHome
//
//  Created by Mingo Chan on 8/2/2024.
//

import SwiftUI

@main
struct PetHomeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
