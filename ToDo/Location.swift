//
//  Location.swift
//  ToDo
//
//  Created by Kyna Nguyen on 7/31/16.
//  Copyright © 2016 Kyna Nguyen. All rights reserved.
//

import CoreLocation

// This struct will represent the location property of the to-do item. Because there is a detailed location view, we make it it's own struct for cleaner, more defined code.
struct Location : Equatable {
    let name: String
    let coordinate: CLLocationCoordinate2D?
    
    init(name: String, coordinate: CLLocationCoordinate2D? = nil) {
        self.name = name
        self.coordinate = coordinate
    }
}

// This global function makes the location struct equatable for better assertion testing.
func ==(lhs: Location, rhs: Location) -> Bool {
    if lhs.coordinate?.latitude != rhs.coordinate?.latitude {
        return false
    }
    
    if lhs.coordinate?.longitude != rhs.coordinate?.longitude {
        return false
    }
    
    if lhs.name != rhs.name {
        return false
    }
    
    return true
}