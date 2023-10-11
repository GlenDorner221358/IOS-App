//
//  WeatherScreen.swift
//  WeatherApp
//
//  Created by student on 2023/10/04.
//

import SwiftUI

struct WeatherScreen: View {
//    VARIABLES
    var city: City = dummyCity
    
    
//    VIEW
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .white], startPoint: .top, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            
            
            VStack(spacing: 20){
                Text("\(city.name), \(city.area)")
                    .font(.title3)
                    .foregroundColor(.white)
//                    .padding(.vertical) can do this instead of spacing in the Vstack
                
                Image(systemName: city.icon)
                    .renderingMode(.original)
//                    .symbolRenderingMode(.palette)
//                    .foregroundStyle(.white, .yellow)
//                    .font(.system(size:140))
//                  can style icons like this to get multiple colors
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 120, height: 120)//.frame has to go last on the modifiers list
                
                Text("\(city.maxTemp)º")
                    .font(.system(size: 64))
                    .bold()
                    .foregroundColor(.white)
                
                Text("Wed, 3 October 2023")
                    .font(.headline)
                    .foregroundColor(.white)
                
                Spacer()
                
                ScrollView(.horizontal){
                    HStack{
                        //            -Weekly forecast stack
                        WeekdayForecastView(weather: dummyWeather, isToday: true)
                        WeekdayForecastView(weather: dummyWeather, isToday: false)
                        WeekdayForecastView(weather: dummyWeather, isToday: false)
                        WeekdayForecastView(weather: dummyWeather, isToday: false)
                        WeekdayForecastView(weather: dummyWeather, isToday: false)
                        WeekdayForecastView(weather: dummyWeather, isToday: false)
                        WeekdayForecastView(weather: dummyWeather, isToday: false)
                    }//END HSTACK
                }//END SCROLLVIEW
                
                
                Spacer()
                
                TabView {
                    AdditionalWeatherView(icon: "cloud",
                                          title:"Min Temperature", value: "\(city.minTemp)º")
                    
                    AdditionalWeatherView(icon: "wind",
                                          title:"Wind Speed", value: "\(city.windSpeed)km/h")
                    
                    AdditionalWeatherView(icon: "humidity",
                                          title:"Humidity", value: "\(city.humidity)%")
                }.padding(.vertical)
                    .tabViewStyle(.page)
                
                
            }.padding(20)//END VSTACK
            
        }//END ZSTACK
    }
}

struct WeatherScreen_Previews: PreviewProvider {
    static var previews: some View {
        WeatherScreen()
    }
}
