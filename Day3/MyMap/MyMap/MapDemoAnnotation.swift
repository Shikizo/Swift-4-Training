//
//  MapDemoAnnotation.swift
//  MyMap
//
//  Created by Cyberjaya 6 iTrain on 15/11/2017.
//  Copyright © 2017 Ken. All rights reserved.
//

import UIKit

import MapKit

class MapDemoAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
        super.init()
        
    }
}
