//
//  WeekdayForecastView.swift
//  WeatherApp
//
//  Created by student on 2023/10/04.
//

import SwiftUI

struct WeekdayForecastView: View {
//    VARIABLES
    // if we no use '=' we need to pass variables everytime we make this view
    var weather: Weather
    var isToday: Bool = false
    
    
//    REST OF CODE OR SUM IDK
    var body: some View {
        VStack(spacing: 10){
            Text(weather.day)
                .textCase(.uppercase)
                .foregroundColor(.white)
                        
            Image(systemName: weather.icon)
                .imageScale(.large)
                .foregroundColor(.white)
                            
            Text("\(weather.temp)º")
                .bold()
                .font(.title2)
                .foregroundColor(.white)
                        
        }.padding(10)
        .background(isToday ? .blue : .clear) //set day if statement
        .cornerRadius(10)
    }
}

struct WeekdayForecastView_Previews: PreviewProvider {
    static var previews: some View {
        WeekdayForecastView(weather: dummyWeather)
            .previewLayout(.sizeThatFits)
            .padding()
            .previewDisplayName("Individual weekly forecast")
    }
}
