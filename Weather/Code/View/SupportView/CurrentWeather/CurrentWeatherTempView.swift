//
//  CurrentWeatherIconView.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 16.02.24.
//

import SwiftUI

struct CurrentWeatherTempView: View {
    //MARK: - Variables
    let currentWeather: CurrentWeatherModel
    
    let fontAbel: String = CustomFonts.abel.rawValue
    var fontColor: Color {
        return WeatherCondition(code: currentWeather.weather?[0].id ?? 0).fontColor
    }
    
    //MARK: - Views
    var body: some View {
        
        ZStack {
            VStack(alignment: .leading, spacing: 20) {
                LocationView(
                    currentWeather: currentWeather,
                    font: fontAbel)
                MainTempView(currentWeather: currentWeather)
            }
            .foregroundStyle(fontColor)
        }
    }
}

#Preview {
    
    ZStack {
        Color.gray
            .ignoresSafeArea()
        CurrentWeatherTempView(
            currentWeather: previewWeather
        )
    }
}
