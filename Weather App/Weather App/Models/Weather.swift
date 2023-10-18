//
//  Weather.swift
//  Weather App
//
//  Created by OW on 2023/10/04.
//

import Foundation

//Class Exercise: - create a new struct called Weather and include the following:
//day of the week, icon, temperature

struct Weather: Identifiable {
    var id = UUID()
    var day: String
    var icon: String
    var temperature: Int
}

let dummyWeather: Weather = Weather(day: "wed", icon: "sun.min", temperature: 30)
