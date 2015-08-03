//
//  MapViewController.swift
//  Indy Fundfest
//
//  Created by Andy Shi on 7/1/15.
//  Copyright (c) 2015 Indy Fundfest. All rights reserved.
//

import UIKit
import Foundation
import MapKit

class MapViewController: UIViewController {
    @IBOutlet var map: MKMapView!
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //    checkLocationAuthorizationStatus()
        var location = CLLocationCoordinate2D(
            latitude: 39.764536,
            longitude: -86.16450500000002
        )
        
        var span = MKCoordinateSpanMake(0.01, 0.01)
        var region = MKCoordinateRegion(center: location, span: span)
        map.setRegion(region, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    
    
//    func checkLocationAuthorizationStatus() {
//        if CLLocationManager.authorizationStatus() == .AuthorizedWhenInUse {
//            map.showsUserLocation = true
//        } else {
//            locationManager.requestWhenInUseAuthorization()
//        }
//    }
    
}

