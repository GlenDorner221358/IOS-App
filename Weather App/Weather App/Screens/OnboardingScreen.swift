//
//  OnboardingScreen.swift
//  Weather App
//
//  Created by student on 2023/10/18.
//

import SwiftUI

struct OnboardingScreen: View {
    
    @AppStorage("isOnboarded") var isOnboarded = false
    
    var body: some View {
        VStack{
            TabView{
                OnboardingCardView(title: "Welcome.", icon: "cloud.sun.fill", description: "Welcome to cloudcast, the best weather forecasting app ever!").padding()
                
                OnboardingCardView(title: "Search.", icon: "magnifyingglass.circle.fill", description: "Find the weather in your area by looking up lmfao dumbass").padding()
                
                
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            
            Button(action: {
                //TODO: upadte appstorage
                isOnboarded.toggle()
            }){
                HStack{
                    Text("Continue")
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

#Preview {
    OnboardingScreen()
}
