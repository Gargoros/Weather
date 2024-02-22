//
//  BackgroundView.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 14.02.24.
//

import SwiftUI

struct BackgroundView: View {
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: Color.thunderstormColor,
                startPoint: .top,
                endPoint: .bottom)
            
        }
        .opacity(0.7)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
