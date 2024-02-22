//
//  WelcomeView.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 14.02.24.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    //MARK: - Variables
    @EnvironmentObject var locationManager: LocationManager
    //MARK: - Views
    var body: some View {
        ZStack{
            BackgroundView()
            VStack(spacing: 20){
                Text(StringConstants.welcomeAppSting)
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                Spacer()
                Image(StringConstants.welcome)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10, corners: .allCorners)
                    .padding()
                    .shadow(color: .black, radius: 4, x: 0.0, y: 6.0)
                Text(StringConstants.shareYourLocation)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                
                //MARK: probable remove that button to another view
                LocationButton(.shareCurrentLocation){
                    locationManager.requestLocation()
                    locationManager.startUpdatingLocation()
                }
                .labelStyle(.iconOnly)
                .font(.largeTitle)
                .foregroundStyle(Color.white)
                .tint(Color.appBluePink)
                .clipShape(Circle())
                .shadow(color: .black, radius: 4, x: 0.0, y: 6.0)
                Spacer()
            }
            .padding(.horizontal)
        }
        .task {
            locationManager.requestLocation()
            locationManager.startUpdatingLocation()
        }
    }
}

#Preview {
    WelcomeView()
        .environmentObject(LocationManager())
}
