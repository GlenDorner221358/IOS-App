//
//  WeatherScreen.swift
//  Weather App
//
//  Created by OW on 2023/10/04.
//

import SwiftUI

struct WeatherScreen: View {
    
//    VALUES - PARAM
    var city: City = dummyCity
    
//    VIEW
    var body: some View {
        ZStack{ //Zstack to place content on top of gradient
            
            LinearGradient(colors: [.blue, .white], startPoint: .top, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            
            VStack(spacing: 20){
                //-Top Main Info
                Text("\(city.name), \(city.area)") //interpulation
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding(.vertical)
                
                Image(systemName: city.icon)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 140, height: 140)
                
                Text("\(city.maxTemperature)º")
                    .font(.system(size: 64))
                    .bold()
                    .foregroundColor(.white)
                
                
                Text("Wed, 3 October 2023")
                    .font(.headline)
                    .foregroundColor(.white)
                
                Spacer()
                
                //-Weekly Forecast
                ScrollView(.horizontal){
                    HStack{
                        
                        ForEach(city.weekdayWeather){day in
                            WeekdayForecastView(weather: day, isToday: false)//TODO: check index of foreach loop
                        }
                        
                    }
                }//END - HStack for Weekday forecast
                

                Spacer()
                
                
                //Min temp, wind, humidity
                TabView {
                    AdditionalWeatherView(icon: "thermometer.snowflake", title: "Min Temperature", value: "\(city.minTemperature)º")
                    
                    AdditionalWeatherView(icon: "wind", title: "Wind Speed", value: "\(city.windSpeed)km/h")
                    
                    AdditionalWeatherView(icon: "humidity", title: "Humidity", value: "\(city.humidity)%")
                }
                .padding(.vertical)
                .tabViewStyle(.page) //style = carousel
                
                
            }.padding(20)//END - Outer VStack
            
        }//END - ZStack
    }
}

struct WeatherScreen_Previews: PreviewProvider {
    static var previews: some View {
        WeatherScreen()
    }
}
