//
//  LoadingView.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 15.02.24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        
        ZStack{
            BackgroundView()
            ProgressCircleView()
        }
    }
}

#Preview {
    LoadingView()
}

 
