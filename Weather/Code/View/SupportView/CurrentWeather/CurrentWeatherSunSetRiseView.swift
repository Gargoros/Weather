//
//  CurrentWeatherSunSetRiseView.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 17.02.24.
//

import SwiftUI

struct CurrentWeatherSunSetRiseView: View {
    //MARK: - Variables
    var currentWeather: CurrentWeatherModel
    
    let font: String = CustomFonts.abel.rawValue
    let fontSizeH1: CGFloat = CustomFontSize.h1.rawValue
    let fontSizeH2: CGFloat = CustomFontSize.h2.rawValue
    
    var fontColor: Color {
        return WeatherCondition(code: currentWeather.weather?[0].id ?? 0).fontColor
    }
    var sunsetIcon: String{
        return fontColor == .white ? IconConstants.sunset : IconConstants.darkSunset
    }
    var sunriseIcon: String{
        return fontColor == .white ? IconConstants.sunrise : IconConstants.darkSunrise
    }
    
    //MARK: - Views
    var body: some View {
        HStack (spacing: 10){
            VStack {
                Image(sunriseIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 80)
                    .foregroundStyle(fontColor)
                Text(StringConstants.sunrise)
                    .font(Font.custom(font, size: fontSizeH2))
                Text(currentWeather.sys?.sunrise?.getTimeStringFromUTC() ?? "")
                    .font(Font.custom(font, size: fontSizeH1))
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.appYellowRed)
            .cornerRadius(10, corners: .allCorners)
            .shadow(color: .black.opacity(0.25), radius: 4, x: 0.0, y: 6.0)
            
            VStack {
                Image(sunsetIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 80)
                    .foregroundStyle(fontColor)
                Text(StringConstants.sunrise)
                    .font(Font.custom(font, size: fontSizeH2))
                Text(currentWeather.sys?.sunset?.getTimeStringFromUTC() ?? "")
                    .font(Font.custom(font, size: fontSizeH1))
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.appLightRed)
            .cornerRadius(10, corners: .allCorners)
            .shadow(color: .black.opacity(0.25), radius: 4, x: 0.0, y: 6.0)
        }
        .labelStyle(VerticalLabelStyle())
    }
}

#Preview {
    CurrentWeatherSunSetRiseView(currentWeather: previewWeather)
}
