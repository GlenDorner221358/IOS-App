//
//  AdditionalWeatherView.swift
//  WeatherApp
//
//  Created by student on 2023/10/11.
//

import SwiftUI

struct AdditionalWeatherView: View {
    
    var icon = "wind"
    var title = "wind speed"
    var value = "33km/h"
    
    var body: some View {
        HStack{
            Image(systemName: icon)
            Text(title)
            Spacer()
            Text(value)
                .bold()
        }.padding()
            .background(.white)
            .cornerRadius(20)
    }
}

#Preview {
    AdditionalWeatherView()
}
