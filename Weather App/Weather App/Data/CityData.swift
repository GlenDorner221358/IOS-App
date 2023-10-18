//
//  CityData.swift
//  Weather App
//
//  Created by OW on 2023/10/11.
//

//right click on Data folder -> new file -> Swift file -> CityData
import Foundation
//Adding my weather/city data

let CityData: [City] = [
    City(name: "Southdowns", area: "Gauteng", maxTemperature: 18, icon: "cloud", windSpeed: 3, humidity: 45, minTemperature: 6, weekdayWeather: [
        Weather(day: "Wed", icon: "cloud", temperature: 12),
        Weather(day: "Thu", icon: "cloud.rain", temperature: 5),
        Weather(day: "Fri", icon: "cloud.sun", temperature: 22)
    ]),
    City(name: "Cape Town", area: "Western Cape", maxTemperature: 26, icon: "cloud.sun", windSpeed: 40, humidity: 20, minTemperature: 14, weekdayWeather: [
        Weather(day: "Wed", icon: "cloud.sun", temperature: 26),
        Weather(day: "Thu", icon: "cloud.rain", temperature: 12),
        Weather(day: "Fri", icon: "cloud.sun", temperature: 20)
    ]),
    City(name: "Stellenbosch", area: "Western Cape", maxTemperature: 19, icon: "cloud", windSpeed: 14, humidity: 10, minTemperature: 9, weekdayWeather: [
        Weather(day: "Wed", icon: "cloud", temperature: 19),
        Weather(day: "Thu", icon: "cloud.rain", temperature: 12),
        Weather(day: "Fri", icon: "cloud.sun", temperature: 29)
    ]),
    City(name: "Joburg", area: "Gauteng", maxTemperature: 20, icon: "cloud.rain", windSpeed: 1, humidity: 52, minTemperature: 3, weekdayWeather: [
        Weather(day: "Wed", icon: "cloud.rain", temperature: 20),
        Weather(day: "Thu", icon: "cloud.rain", temperature: 5),
        Weather(day: "Fri", icon: "cloud.sun", temperature: 21)
    ])
]


//CLASS EXERCISE : Add 3 more cities in your CityData for (Stellenbosch, Johannesburg, Cape Town)
