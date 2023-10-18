//
//  City.swift
//  Weather App
//
//  Created by OW on 2023/10/04.
//

import Foundation

//this model is a blueprint/schema of my city data

struct City: Identifiable {
    var id = UUID() //unique id for each city, that gets auto generated
    var name: String
    var area: String
    var maxTemperature: Int
    var icon: String
    var windSpeed: Int
    var humidity: Int
    var minTemperature: Int
    //Weekday forecasts
    var weekdayWeather: [Weather] //variable equal to an array of all my weather data
}

//dummy city from my blueprint(all my previews)
let dummyCity: City = City(
    name: "Southdowns",
    area: "Centurion",
    maxTemperature: 24,
    icon: "cloud.sun",
    windSpeed: 12,
    humidity: 33,
    minTemperature: 9,
    weekdayWeather: [dummyWeather, dummyWeather])
