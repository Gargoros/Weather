//
//  LocationView.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 21.02.24.
//

import SwiftUI

struct LocationView: View {
    //MARK: - Variables
    let currentWeather: CurrentWeatherModel
    let font: String
    
    let iconSize: CGFloat = 20
    let fontSizeH1: CGFloat = CustomFontSize.h1.rawValue
    
    
    
    //MARK: - Views
    var body: some View {
        HStack {
            Image(systemName: IconConstants.location)
                .resizable()
                .scaledToFit()
                .frame(width: iconSize, height: iconSize)
            Text("\(currentWeather.name ?? StringConstants.location) \\ \(currentWeather.sys?.country ?? "")")
                .font(Font.custom(font, size: fontSizeH1))
            Spacer()
            Spacer()
            Text("\(currentWeather.weather?[0].description ??  "")")
                .font(Font.custom(font, size: fontSizeH1))
                .minimumScaleFactor(0.6)
                .multilineTextAlignment(.trailing)
            Spacer()
        }
    }
}

#Preview {
    LocationView(
        currentWeather: previewWeather,
        font: "Abel-Regular")
    .foregroundStyle(.white)
}
