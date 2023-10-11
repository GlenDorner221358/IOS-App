//
//  City.swift
//  WeatherApp
//
//  Created by student on 2023/10/04.
//

import Foundation

//This is a blueprint for the city data

struct City: Identifiable {
    var id = UUID() //unique id for each city that auto generates so dont have to make a new one
    var name: String
    var area: String
    var maxTemp: Int
    var minTemp: Int
    var icon: String
    var windSpeed: Int
    var humidity: Int
    //TODO: Weekday forecasts
}

//dummy city from blueprint for previews
let dummyCity: City = City(
    name: "LavaZone",
    area: "Pretoria",
    maxTemp: 892,
    minTemp: 1,
    icon: "fireplace",
    windSpeed: 12,
    humidity: 33)

