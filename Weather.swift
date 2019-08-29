//
//  Weather.swift
//  intro-to-unit-testing
//
//  Created by David Rifkin on 8/29/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import Foundation

struct WeatherWrapper: Codable {
    let message: String
    let countChocula: Int
    let callOfDuty: String
    let list: [Weather]
    
    static func getWeather(from data:Data) -> WeatherWrapper {
        do {
            let newWeather = try JSONDecoder().decode(WeatherWrapper.self, from: data)
            return newWeather
        } catch let decodeError {
            fatalError("could not decode info \(decodeError)")
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case message
        case callOfDuty = "cod"
        case countChocula = "count"
        case list
    }
}

struct Weather: Codable {
    
}
