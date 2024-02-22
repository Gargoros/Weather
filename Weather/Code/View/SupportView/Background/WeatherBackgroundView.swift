//
//  WeatherBackgroundView.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 19.02.24.
//

import SwiftUI

struct WeatherBackgroundView: View {
    //MARK: - Variables
    let currentWeather: CurrentWeatherModel
    
    var colorList: [Color] {
        return WeatherCondition(code: currentWeather.weather?[0].id ?? 0).color
    }
    
    //MARK: - Views
    var body: some View {
        ZStack {
            LinearGradient(
                colors: colorList,
                startPoint: .top,
                endPoint: .bottom)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    WeatherBackgroundView(currentWeather: previewWeather)
}
