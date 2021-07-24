//
//  Location.swift
//  RunAwesome
//
//  Created by Ramill Ibragimov on 24.07.2021.
//

import Foundation
import RealmSwift

final class Location: Object {
    
    @objc dynamic public private(set) var latitude = 0.0
    @objc dynamic public private(set) var longtitude = 0.0
    
    convenience init(lat: Double, long: Double) {
        self.init()
        self.latitude = lat
        self.longtitude = long

    }
}
