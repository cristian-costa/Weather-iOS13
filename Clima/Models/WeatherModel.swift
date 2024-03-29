//
//  WeatherModel.swift
//  Clima
//
//  Created by Cristian Costa on 29/07/2021.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    let minTemperature: Double
    let maxTemperature: Double
    
    var temperatureString: String {
        String(format: "%.1f", temperature)
    }
    
    var minTemperatureString: String {
        String(format: "%.1f", minTemperature)
    }
    
    var maxTemperatureString: String {
        String(format: "%.1f", maxTemperature)
    }
    
    var conditionName: String {
        switch conditionId {
            case 200...232:
                return "cloud.bolt.rain"
            case 300...321:
                return "cloud.drizzle"
            case 500...531:
                return "cloud.rain"
            case 600...622:
                return "cloud.snow"
            case 701...781:
                return "cloud.fog"
            case 800:
                return "sun.max"
            default:
                return "cloud"
        }
    }
}
