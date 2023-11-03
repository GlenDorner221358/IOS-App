//
//  SplashScreen.swift
//  GameLogger
//
//  Created by Glen
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    
    @AppStorage("isOnboarded") var isOnboarded: Bool = false

    var body: some View {
        if isActive {
            if(isOnboarded){
                LibraryScreen(Game: dummyGame)
            }else{
                OnboardingScreen()
            }
        } else {
            ZStack{
                LinearGradient(colors: [.brown], startPoint: .top, endPoint: .bottomTrailing)
                    .ignoresSafeArea(.all)
                VStack{
                    VStack{
                        Image("REAL app icon")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .font(.system(size: 20))
                        Text("GameLogger")
                            .font(.system(size: 26)).bold()
                        Text("Version 1.0")
                            .font(.system(size: 26)).bold()
                    }//END OF INNER VSTACK
                }//END OF OUTER VSTACK
                
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.isActive = true
                    }
                }
            }
        }


        
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
