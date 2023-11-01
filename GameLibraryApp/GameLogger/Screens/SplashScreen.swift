//
//  SplashScreen.swift
//  GameLogger
//
//  Created by Glen
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false

    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack{
                VStack{
                    Image(systemName: "flame")
                        .font(.system(size: 80))
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

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}