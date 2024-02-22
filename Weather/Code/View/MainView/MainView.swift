//
//  ContentView.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 14.02.24.
//

import SwiftUI
import CoreLocationUI

struct MainView: View {
    //MARK: - Variables
    @StateObject var locationManager = LocationManager()
    @State var currentWeather: CurrentWeatherModel?
    var weatherManager = WeatherManager()
    
    //MARK: - Views
    var body: some View {
        ZStack {
            if let currentWeather = currentWeather {
                WeatherMainView(currentWeather: currentWeather)
            }
            else{
                if let location = locationManager.location{
                    LoadingView()
                        .task {
                            do{
                                currentWeather = try await weatherManager.getCurrentWeatherData(lat: location.latitude, long: location.longitude)
                            }
                            catch{
                                print("Error getting weather: \(error)")
                            }
                        }
                }
                else{
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
        }
    }
}

#Preview {
    MainView()
        .environmentObject(LocationManager())
}
