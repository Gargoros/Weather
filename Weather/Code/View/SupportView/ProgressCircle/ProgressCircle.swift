//
//  ProgressCircle.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 15.02.24.
//

import Foundation
import SwiftUI

struct GaugeProgressStyle: ProgressViewStyle {
    var strokeColor = Color.white.gradient
    var strokeWidth = 25.0

    func makeBody(configuration: Configuration) -> some View {
        let fractionCompleted = configuration.fractionCompleted ?? 0

        return ZStack {
            Circle()
                .trim(from: 0, to: fractionCompleted)
                .stroke(strokeColor, style: StrokeStyle(lineWidth: strokeWidth, lineCap: .round))
                .rotationEffect(.degrees(90))
                .shadow(radius: 5)
        }
    }
}
