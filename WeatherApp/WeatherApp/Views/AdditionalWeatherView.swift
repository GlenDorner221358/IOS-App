//
//  AdditionalWeatherView.swift
//  WeatherApp
//
//  Created by student on 2023/10/11.
//

import SwiftUI
//right click views then add file then add swift ui file and then here you ares
struct AdditionalWeatherView: View {
    var icon = "wind"
    var title = "Wind Speed"
    var value = "33"
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
