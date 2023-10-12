//
//  CityData.swift
//  WeatherApp
//
//  Created by student on 2023/10/11.
//

import Foundation
//data not model just debugging
let CityData: [City] = [
    City(name: "Southdowns", area: "Gauteng", maxTemp: 10, minTemp: 6,icon: "clouds", windSpeed: 3, humidity: 45,  weekdayWeather: [
        Weather(day: "Wed", icon: "cloud", temp: 12),
        Weather(day: "Thu", icon: "cloud.rain", temp: 5),
        Weather(day: "Fri", icon: "cloud.sun", temp: 22)
    ]),
    City(name: "Stellenbosch", area: "Cape Town", maxTemp: 10,minTemp: 6, icon: "sun", windSpeed: 3, humidity: 45,  weekdayWeather: [
        Weather(day: "Wed", icon: "cloud", temp: 12),
        Weather(day: "Thu", icon: "cloud.rain", temp: 5),
        Weather(day: "Fri", icon: "cloud.sun", temp: 22)
    ]),
    City(name: "Johannesberg", area: "Gauteng", maxTemp: 10, minTemp: 6,icon: "storm", windSpeed: 3, humidity: 45,  weekdayWeather: [
        Weather(day: "Wed", icon: "cloud", temp: 12),
        Weather(day: "Thu", icon: "cloud.rain", temp: 5),
        Weather(day: "Fri", icon: "cloud.sun", temp: 22)
    ])
 ]
