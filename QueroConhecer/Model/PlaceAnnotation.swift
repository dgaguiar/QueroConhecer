//
//  PlaceAnnotation.swift
//  QueroConhecer
//
//  Created by User on 28/03/21.
//  Copyright © 2021 User. All rights reserved.
//

import Foundation
import MapKit



class PlaceAnnotation: NSObject, MKAnnotation {
    
    enum PlaceType {
        case place
        case poi
    }
    
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    var type: PlaceType
    var address: String?
    
    init(coordinate: CLLocationCoordinate2D, type: PlaceType) {
        self.coordinate = coordinate
        self.type = type
    }
}
