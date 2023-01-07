//
//  Location.swift
//  sanHomeLocation
//
//  Created by saneesh antony on 2022-08-20.
//

import Foundation
import CoreLocation

class MyLocation : NSObject, ObservableObject, CLLocationManagerDelegate {
    
    let manager = CLLocationManager()
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init() {
        super.init()
        manager.delegate = self
    }
    func requestLoc() {
        isLoading = true
        manager.requestLocation()
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading = true
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("error getting location,\(error)")
        isLoading = false 
    }
}
//func locationManager(_ manager: CLLocationManager, didUpdateLocation location: [CLLocation]){
//    location = locations.first?.coordinate
//    //isLoading = false

