//
//  CurrentWeatherCardView.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 21.02.24.
//

import SwiftUI

struct CurrentWeatherCardView: View {
    //MARK: - Variables
    var currentWeather: CurrentWeatherModel
    
    var weatherInfo: String?
    let dataTypeName: String
    let symbol: String
    let icon: String
    let fontColor: Color
    
    let size: CGFloat = 32
    let font: String = CustomFonts.abel.rawValue
    let fontSizeH1: CGFloat = CustomFontSize.h1.rawValue
    let fontSizeH2: CGFloat = CustomFontSize.h2.rawValue
    
    //MARK: - Views
    var body: some View {
        
        HStack(spacing: 10) {
            Text(dataTypeName)
                .font(Font.custom(font, size: fontSizeH1))
            Spacer()

            Text("\(weatherInfo ?? "") \(symbol)")
                .font(Font.custom(font, size: fontSizeH1))
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .fontWeight(.regular)
                .frame(width: size, height: size)
        }
        .fontWeight(.bold)
        .foregroundStyle(fontColor)
        .multilineTextAlignment(.center)
    }
}

#Preview {
    CurrentWeatherCardView(
        currentWeather: previewWeather,
        weatherInfo: String(previewWeather.clouds?.all ?? 0),
        dataTypeName: StringConstants.clouds,
        symbol: StringConstants.cloudsUnit,
        icon: IconConstants.clouds,
        fontColor: Color.white
    )
}
