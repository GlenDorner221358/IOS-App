//
//  OnboardingScreen.swift
//  GameLogger
//
//  Created by Glen
//

import SwiftUI

struct OnboardingScreen: View {
    
    @AppStorage("isOnboarded") var isOnboarded = false
    
    var body: some View {
        VStack{
            TabView{
                OnboardingCardView(title: "Welcome.", icon: "gamecontroller", description: "This is GameLogger, your one stop shop for cataloguing your collection!").padding()
                
                OnboardingCardView(title: "Search.", icon: "magnifyingglass.circle.fill", description: "Forgot if you own a specific game? Check!").padding()
                
                OnboardingCardView(title: "Remember.", icon: "books.vertical", description: "Forgot how to play a game you want to come back to? Just read the tutorial!").padding()
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            
            Button(action: {
                //TODO: upadte appstorage
                isOnboarded.toggle()
            }){
                HStack{
                    Text("Next")
                        .padding()
                    Spacer()
                    Image(systemName: "arrow.right.circle.fill")
                        .padding()
                }
            }
            .buttonStyle(.borderedProminent)
            .padding()
            
        }//END Vstack
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}

