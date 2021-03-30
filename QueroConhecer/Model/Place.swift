//
//  Place.swift
//  QueroConhecer
//
//  Created by User on 28/03/21.
//  Copyright © 2021 User. All rights reserved.
//

import Foundation
import MapKit

struct Place: Decodable, Encodable {
    let name: String
    let latitute: CLLocationDegrees
    let longitude: CLLocationDegrees
    let address: String
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitute, longitude: longitude)
    }
    
    static func getFormattedAddress(with placemark: CLPlacemark) -> String {
        var address = String()
        if let street = placemark.thoroughfare {
            address += street // Rua
        }
        if let number = placemark.subThoroughfare {
            address += ", \(number)" // Numero
        }
        if let subLocality = placemark.subLocality {
            address += ", \(subLocality)" // Bairro
        }
        if let city = placemark.locality {
            address += "\n\(city)" // Cidade
        }
        if let state = placemark.administrativeArea {
            address += " - \(state)" // Estado
        }
        if let postalCode = placemark.postalCode {
            address += "\nCEP: \(postalCode)" // CEP
        }
        if let country = placemark.country {
            address += "\n\(country)" // Pais
        }
        return address
    }
}

extension Place: Equatable {
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.latitute == rhs.latitute && lhs.longitude == rhs.longitude
    }
}
