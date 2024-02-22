//
//  ProgressCircleView.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 15.02.24.
//

import SwiftUI

struct ProgressCircleView: View {
    //MARK: - Variables
    @State private var progress: CGFloat = 0.0
    @State private var rotate: CGFloat = 0.0
    
    //MARK: - Views
    var body: some View {
        ZStack {
            ProgressView(value: progress)
                .progressViewStyle(GaugeProgressStyle())
                .frame(width: 200, height: 200)
                .contentShape(Rectangle())
                .rotationEffect(Angle(degrees: rotate))
        }
        .onAppear{
            withAnimation(.linear(duration: 3).repeatForever(autoreverses: false)){
                progress += 1.0
                rotate = 360
            }
            
        }
    }
}

#Preview {
    ZStack{
        BackgroundView()
        ProgressCircleView()
    }
    
}
