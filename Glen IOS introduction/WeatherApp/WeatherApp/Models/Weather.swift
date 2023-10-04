//
//  Weather.swift
//  WeatherApp
//
//  Created by student on 2023/10/04.
//

import Foundation

//Weather structure
struct Weather: Identifiable {
    var id = UUID() //unique id for each weather that auto generates so dont have to make a new one
    var day: String
    var icon: String
    var temp: Int
}

//dummy weather from blueprint for previews
let dummyWeather: Weather = Weather(
    day: "WED",
    icon: "flame",
    temp: 333)
