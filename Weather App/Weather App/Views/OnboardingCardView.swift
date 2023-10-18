//
//  OnboardingCardView.swift
//  Weather App
//
//  Created by student on 2023/10/18.
//

import SwiftUI

struct OnboardingCardView: View {
    var title: String
    var icon: String
    var description: String
    
    var body: some View {
        VStack (alignment: .center, spacing: 20) {
            Text(title)
                .font(.system(size: 52, weight: .heavy))
                .multilineTextAlignment(.center)
                .bold()
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.palette)
                    .foregroundStyle(.white, .yellow)
                    .frame(width: 140, height: 140)
                    .padding()
            Text(description)
                .multilineTextAlignment(.center)
                .font(.title)
                .bold()
        }
        .padding(40)
        .frame(maxWidth: .infinity)
        .background(.blue)
        .cornerRadius(20)
        .foregroundColor(.white)
        .shadow(color: .black.opacity(0.3), radius: 20, x: 2, y: 10)
        }
    }

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView(title: "hello", icon: "flame", description: "bababooie")
    }
}
