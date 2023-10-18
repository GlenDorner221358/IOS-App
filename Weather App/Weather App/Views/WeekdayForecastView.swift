//
//  WeekdayForecastView.swift
//  Weather App
//
//  Created by OW on 2023/10/04.
//

import SwiftUI

struct WeekdayForecastView: View {
//    VAR
    
    //var parameter: String (NO EQUAL SIGN = PARAMETER)
    
    //if we don't add a = sign, we need to pass the variable everytime we create this week
    var weather: Weather //parameter
    var isToday: Bool = false
    
    var body: some View {
        VStack(spacing: 10){
            Text(weather.day)
                .textCase(.uppercase)
                .foregroundColor(.white)
            
            Image(systemName: weather.icon)
                .imageScale(.large)
                .foregroundColor(.white)
            
            Text("\(weather.temperature)º")
                .bold()
                .font(.title3)
                .foregroundColor(.white)
        }
        .padding(10)
        .background(isToday ? .blue : .clear) //if this week
        .cornerRadius(10)
    }
}

struct WeekdayForecastView_Previews: PreviewProvider {
    static var previews: some View {
        //because my weather variable in my view is a parameter, I need to pass the value that it is equal to as a parameter when I call it
        WeekdayForecastView(weather: dummyWeather)
            .previewLayout(.sizeThatFits)
            .padding()
            .previewDisplayName("Individual weekly forecast")
    }
}
