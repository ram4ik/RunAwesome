//
//  LocationManager.swift
//  RunAwesome
//
//  Created by ramil on 19.07.2021.
//

import Foundation
import CoreLocation

final class LocationManager {
    var manager: CLLocationManager
    
    init() {
        manager = CLLocationManager()
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.activityType = .fitness
    }
    
    func checkLocationAuthorization() {
        if manager.authorizationStatus != .authorizedWhenInUse {
            manager.requestWhenInUseAuthorization()
        }
    }
}
