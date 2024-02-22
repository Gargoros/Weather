//
//  WeatherCondition.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 19.02.24.
//

import Foundation
import SwiftUI

enum WeatherCondition {
    case thunderstorm
    case drizzle
    case rain
    case snow
    case atmosphere
    case clear
    case clouds
    case unknown
    
    //MARK: Weather colours codes
    init(code: Int) {
        switch code {
        case 200...299:
            self = .thunderstorm
        case 300...399:
            self = .drizzle
        case 500...599:
            self = .rain
        case 600...699:
            self = .snow
        case 700...799:
            self = .atmosphere
        case 800:
            self = .clear
        case 801...899:
            self = .clouds
        default:
            self = .unknown
        }
    }
    
    //MARK: Background colours gradient
    var color: [Color] {
        switch self {
        case .thunderstorm:
            return Color.thunderstormColor
        case .drizzle:
            return Color.drizzleColor
        case .rain:
            return Color.rainColor
        case .snow:
            return Color.snowColor
        case .atmosphere:
            return Color.atmosphereColor
        case .clear:
            return Color.clearColor
        case .clouds:
            return Color.cloudsColor
        case .unknown:
            return Color.unknownColor
        }
    }
    
    //MARK: font colours
    var fontColor: Color {
        switch self {
        case .thunderstorm:
            return Color.white
        case .drizzle:
            return Color.white
        case .rain:
            return Color.white
        case .snow:
            return Color.black
        case .atmosphere:
            return Color.white
        case .clear:
            return Color.white
        case .clouds:
            return Color.black
        case .unknown:
            return Color.white
        }
    }
    
    //MARK: Background card colours
    var cardColor: Color {
        switch self {
        case .thunderstorm:
            return Color.appBluePink
        case .drizzle:
            return Color.appPink.opacity(0.52)
        case .rain:
            return Color.appDarkBlue
        case .snow:
            return Color.appGray
        case .atmosphere:
            return Color.appSkyLight
        case .clear:
            return Color.appLightYellow
        case .clouds:
            return Color.appGray
        case .unknown:
            return Color.appDark
        }
    }
    
    //MARK: Weather type icon
    var weatherIcon: String {
        switch self {
        case .thunderstorm:
            IconConstants.thunderstorm
        case .drizzle:
            IconConstants.drizzle
        case .rain:
            IconConstants.rain
        case .snow:
            IconConstants.darkSnow
        case .atmosphere:
            IconConstants.atmosphere
        case .clear:
            IconConstants.sunny
        case .clouds:
            IconConstants.darkCloudy
        case .unknown:
            IconConstants.unknown
        }
    }
}
