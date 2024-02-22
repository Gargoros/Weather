//
//  WeatherMainView.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 15.02.24.
//

import SwiftUI
import CoreLocation

struct WeatherMainView: View {
    //MARK: - Variables
    var currentWeather: CurrentWeatherModel
    
    //MARK: - Views
    var body: some View {
        ZStack {
            WeatherBackgroundView(currentWeather: currentWeather)
            
            ScrollView(showsIndicators: false) {
                VStack (spacing: 20){
                    CurrentWeatherTempView(currentWeather: currentWeather)
                    Spacer()
                        
                    CurrentWeatherMainInfoView(currentWeather: currentWeather)
                    
                    CurrentWeatherSunSetRiseView(currentWeather: currentWeather)
                 
                }
                .padding(.horizontal)
            }

        }
    }
}

#Preview {
    WeatherMainView(currentWeather: previewWeather)
}
