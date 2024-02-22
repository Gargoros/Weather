//
//  CurrentWeatherMainInfoView.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 16.02.24.
//

import SwiftUI

struct CurrentWeatherMainInfoView: View {
    //MARK: - Variables
    var currentWeather: CurrentWeatherModel
    
    var color: Color {
        return WeatherCondition(code: currentWeather.weather?[0].id ?? 0).cardColor
    }
    var fontColor: Color {
        return WeatherCondition(code: currentWeather.weather?[0].id ?? 0).fontColor
    }
    
    //MARK: - Views
    var body: some View {
        VStack {
            CurrentWeatherCardView(
                currentWeather: currentWeather,
                weatherInfo: String(currentWeather.main?.pressure ?? 0),
                dataTypeName: StringConstants.pressure ,
                symbol: StringConstants.pressureUnit,
                icon: IconConstants.pressure,
                fontColor: fontColor
            )
            
            CurrentWeatherCardView(
                currentWeather: currentWeather,
                weatherInfo: String(currentWeather.main?.humidity ?? 0),
                dataTypeName: StringConstants.humidity,
                symbol: StringConstants.humidityUnit,
                icon: IconConstants.humidity,
                fontColor: fontColor
            )
            
            CurrentWeatherCardView(
                currentWeather: currentWeather,
                weatherInfo: String(currentWeather.wind?.speed ?? 0),
                dataTypeName: StringConstants.wind ,
                symbol: StringConstants.windUnit,
                icon: IconConstants.wind,
                fontColor: fontColor
            )
           
            CurrentWeatherCardView(
                currentWeather: currentWeather,
                weatherInfo: String(currentWeather.clouds?.all ?? 0),
                dataTypeName: StringConstants.clouds,
                symbol: StringConstants.cloudsUnit,
                icon: IconConstants.clouds,
                fontColor: fontColor
            )
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(color)
        .cornerRadius(10, corners: .allCorners)
        .shadow(color: .black.opacity(0.25), radius: 4, x: 0.0, y: 6.0)
        
    }
}



#Preview {
    CurrentWeatherMainInfoView(currentWeather: previewWeather)
}
