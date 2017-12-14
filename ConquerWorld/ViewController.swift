//
//  ViewController.swift
//  ConquerWorld
//
//  Created by Manu on 9/12/17.
//  Copyright © 2017 Manu. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class PruebaViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    
    
//    @IBOutlet weak var pruebaLocationMap: MKMapView!
    
    let locationManager = CLLocationManager()
    var location : CLLocation!
    
    @IBOutlet var map: MKMapView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        location = nil
        
        map.delegate = self
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let lastLocation = locations[locations.count - 1]
        
        
        let region = MKCoordinateRegionMakeWithDistance(lastLocation.coordinate, 1000, 1000)
        map.setRegion(region, animated: true)
        
        let user = UserCW.init("prueba", "lererle")
//
        print(lastLocation)
        
        let prueba2 = LocationProbeCW(lastLocation)
        
//        let prueba = LocationCW(lastLocation)
//
//        print(prueba.indexLat)
//        print(prueba.decLat)
//        print(prueba.cuadrantLat)
//
//
//
//        print(prueba.indexLong)
//        print(prueba.decLong)
//        print(prueba.cuadrantLong)
//
//        Service_Database().saveLocationByOwnerUID(user, prueba) { (error, object) in
//            if error != nil {
//                print(error as Any)
//            } else {
//                print("todo ha ido bien")
//            }
//        }
        Service_Database().saveLocationByOwnerUID(user, prueba2) { (error, object) in
            if error != nil {
                print(error as Any)
            } else {
                print("todo ok")
            }
        }
        
        
        
        
    }


}

