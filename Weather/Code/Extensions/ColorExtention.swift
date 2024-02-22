//
//  ColorExtention.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 19.02.24.
//

import Foundation
import SwiftUI

extension Color {
    
    static let appBlue: Color = Color("colorBlue")
    static let appBlueLight: Color = Color("colorBlueLight")
    static let appBluePink: Color = Color("colorBluePink")
    static let appDark: Color = Color("colorDark")
    static let appDarkBlue: Color = Color("colorDarkBlue")
    static let appDarkPink: Color = Color("colorDarkPink")
    static let appDarkRed: Color = Color("colorDarkRed")
    static let appGray: Color = Color("colorGray")
    static let appGreen: Color = Color("colorGreen")
    static let appLightBlue: Color = Color("colorLightBlue")
    static let appLightRed: Color = Color("colorLightRed")
    static let appLightYellow: Color = Color("colorLightYellow")
    static let appPink: Color = Color("colorPink")
    static let appYellow: Color = Color("colorYellow")
    static let appYellowGreen: Color = Color("colorYellowGreen")
    static let appYellowRed: Color = Color("colorYellowRed")
    static let appLightDark: Color = Color("colorLightDark")
    static let appSkyLight: Color = Color("colorSkyLight")
    
    static let thunderstormColor: [Color] = [.appBlue, .appBlue, .appDarkPink]
    static let drizzleColor: [Color] = [.appDarkBlue, .appDarkBlue, .appGray]
    static let rainColor: [Color] = [.appDarkBlue, .appBlue, .appGray]
    static let snowColor: [Color] = [.white, .white, .appGray]
    static let atmosphereColor: [Color] = [.appLightBlue, .appLightBlue, .appGray]
    static let clearColor: [Color] = [.appYellow, .appYellow, .appGray]
    static let cloudsColor: [Color] = [.appGray, .appSkyLight,]
    static let unknownColor: [Color] = [.appDarkPink, .appDarkPink, .appLightDark]
}
