//
//  WeatherApp.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 14.02.24.
//

import SwiftUI

@main
struct WeatherApp: App {
    @StateObject var locationManager: LocationManager = LocationManager()
    var body: some Scene {
        
        WindowGroup {
            MainView()
                .environmentObject(locationManager)
        }
    }
}
