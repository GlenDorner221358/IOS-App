//
//  GameLoggerApp.swift
//  GameLogger
//
//  Created by student on 2023/10/05.
//

import SwiftUI

@main
struct GameLoggerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
