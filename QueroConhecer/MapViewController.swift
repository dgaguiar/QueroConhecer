//
//  MapViewController.swift
//  QueroConhecer
//
//  Created by User on 28/03/21.
//  Copyright © 2021 User. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var viInfo: UIView!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbAdress: UILabel!
    
    var places: [Place] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.isHidden = true
        viInfo.isHidden = true
        
        if places.count == 1 {
            title = places[0].name
        } else {
            title = "Meus lugares"
        }
        
        for place in places {
            addToMap(place)
        }
        
        showPlaces()
    }

    func addToMap(_ place: Place) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = place.coordinate
        annotation.title = place.name
        mapView.addAnnotation(annotation)
    }
    
    func showPlaces() {
        mapView.showAnnotations(mapView.annotations, animated: true)
    }
    
    @IBAction func showRoute(_ sender: Any) {
    }
    
    @IBAction func showSearchBar(_ sender: UIBarButtonItem) {
    }
    

}
