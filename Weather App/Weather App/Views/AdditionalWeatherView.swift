//
//  AdditionalWeatherView.swift
//  Weather App
//
//  Created by OW on 2023/10/11.
//

import SwiftUI
//right click on Views -> New File -> SwiftUIView
struct AdditionalWeatherView: View {
    
    var icon = "wind"
    var title = "Wind Speed"
    var value = "33 km/h"
    
    var body: some View {
        HStack{
            Image(systemName: icon)
            Text(title)
            Spacer()
            Text(value)
                .bold()
        }
        .padding()
        .background(.white)
        .foregroundColor(.blue)
        .cornerRadius(20)
    }
}

struct AdditionalWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        AdditionalWeatherView()
    }
}
