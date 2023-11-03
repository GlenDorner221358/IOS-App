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
    @AppStorage("isOnboarded") var isOnboarded: Bool = false

    var body: some Scene {
        WindowGroup {
            //If has not been onboarded, show onboarding screen
            if(isOnboarded){
                LibraryScreen(Game: dummyGame)
            }else{
                OnboardingScreen()
            }
        }
    }
}
