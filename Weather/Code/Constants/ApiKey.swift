//
//  ApiKey.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 15.02.24.
//

import Foundation



struct ApiKey {
    
    
    static let apiKey: String = "7e64f5abddb96acf1e9feee3f63d4f24"
}

struct WeatherApi{
    
    static let baseUrl: String = "https://api.openweathermap.org/data/2.5/"
    
    static let currentWeatherData: String = "\(baseUrl)weather?lat={lat}&lon={lon}&appid=\(ApiKey.apiKey)"
    
    static let forecastWeatherData: String = "\(baseUrl)forecast?lat={lat}&lon={lon}&appid=\(ApiKey.apiKey)"
    
    static let weatherMap: String = "https://tile.openweathermap.org/map/{layer}/{z}/{x}/{y}.png?appid=\(ApiKey.apiKey)"
    
    static let airPollutionData: String = "\(baseUrl)air_pollution?lat={lat}&lon={lon}&appid=\(ApiKey.apiKey)"
}
