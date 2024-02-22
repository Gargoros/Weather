//
//  MainTempView.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 21.02.24.
//

import SwiftUI

struct MainTempView: View {
    //MARK: - Variables
    let currentWeather: CurrentWeatherModel
    
    let size: CGFloat = 80
    let fontAldrich: String = CustomFonts.aldrich.rawValue
    let fontAbel: String = CustomFonts.abel.rawValue
    let fontSizeH0: CGFloat = CustomFontSize.h0.rawValue
    let fontSizeH3: CGFloat = CustomFontSize.h3.rawValue
    let fontSizeH4: CGFloat = CustomFontSize.h4.rawValue
    
    var weatherIcon: String {
        return WeatherCondition(code: currentWeather.weather?[0].id ?? 0).weatherIcon
    }
    var fontColor: Color {
        return WeatherCondition(code: currentWeather.weather?[0].id ?? 0).fontColor
    }
    
    //MARK: - Views
    var body: some View {
        HStack (spacing: 0){
            Image(systemName: IconConstants.thermometer)
                .resizable()
                .scaledToFit()
                .foregroundStyle(fontColor)
                .frame(width: size, height: size)
            Text("\(currentWeather.main?.temp?.roundedDouble() ?? "")\(StringConstants.celsiusUnit)")
                    .font(Font.custom(fontAldrich, size: fontSizeH0))
            VStack{
                Image(weatherIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: size, height: size)
                Text("\(currentWeather.main?.tempMax?.roundedDouble() ?? "0")° \\ \(currentWeather.main?.tempMin?.roundedDouble() ?? "0")° \(StringConstants.feelsLike) \(currentWeather.main?.feelsLike?.roundedDouble() ?? "0")°")
                    .font(Font.custom(fontAbel, size: fontSizeH3))
                Text("\(currentWeather.dt?.getTimeAndDateStringFromUTC() ?? "")")
                    .font(Font.custom(fontAbel, size: fontSizeH4))
            }
            
        }
        .foregroundStyle(fontColor)
    }
}

#Preview {
    MainTempView(currentWeather: previewWeather)
}
