//
//  Weather_AppApp.swift
//  Weather App
//
//  Created by OW on 2023/09/27.
//

import SwiftUI
//entry point of your app //App.js file in react
@main
struct Weather_AppApp: App {
    
    //app storage Variable that checks if its the first time the app is opened (onboarding)
    @AppStorage("isOnboarded") var isOnboarded: Bool = false
    
    var body: some Scene {
        WindowGroup {
            
            //If has been onboarded, show
            if(isOnboarded){
                CityListScreen()
            }else{
                OnboardingScreen()
            }
        }
    }
}
