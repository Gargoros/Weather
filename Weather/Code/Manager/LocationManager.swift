//
//  LocationManager.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 14.02.24.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading: Bool = false
    let locationManager = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.delegate = self
    }
    
    func requestLocation(){
        locationManager.requestLocation()
        isLoading = true
    }
    func requestWhenInUseAuthorization(){
        locationManager.requestWhenInUseAuthorization()
        isLoading = true
    }
    
    func requestAlwaysAuthorization(){
        locationManager.requestAlwaysAuthorization()
        isLoading = true
    }
    
    func startUpdatingLocation(){
        locationManager.startUpdatingLocation()
        isLoading = true
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first?.coordinate else { return  }
        self.location = location
        isLoading = false
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        if let coreLocationError = error as? CLError{
            switch coreLocationError.code {
            case .locationUnknown:
                print("Error, location unknown", error)
                isLoading = false
            case .denied:
                print("Error, Location denied", error)
                isLoading = false
            default:
                print("Error getting location", error)
                isLoading = false
            }
        }
    }
    
    
}

