//
//  WeatherManager.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 15.02.24.
//

import Foundation
import CoreLocation

class WeatherManager {
    
    func getCurrentWeatherData(lat: CLLocationDegrees, long: CLLocationDegrees) async throws -> CurrentWeatherModel {
        
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(lat)&lon=\(long)&appid=\(ApiKey.apiKey)&units=metric") else { fatalError("Missing URL")}
        
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {fatalError("Error fetching weather data.")}
        
        let decodeData = try JSONDecoder().decode(CurrentWeatherModel.self, from: data)
        
        return decodeData
    }
}
