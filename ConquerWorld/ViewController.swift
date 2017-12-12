//
//  ViewController.swift
//  ConquerWorld
//
//  Created by Manu on 9/12/17.
//  Copyright © 2017 Manu. All rights reserved.
//

import UIKit
import CoreLocation

class PruebaViewController: UIViewController, CLLocationManagerDelegate {

    
    
//    @IBOutlet weak var pruebaLocationMap: MKMapView!
    
    let locationManager = CLLocationManager()
    var location : CLLocation!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        location = nil
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let lastLocation = locations[locations.count - 1]
//        print(lastLocation.coordinate.latitude)
//        print(lastLocation.coordinate.longitude)
//        let indiceLat = Double(lastLocation.coordinate.latitude)
//        print(indiceLat)
//        let indiceLatReal = Int(indiceLat)
//        print(indiceLatReal)
//        let prueba = indiceLat.truncatingRemainder(dividingBy: 1.0)
//        print(prueba)
//        let prueba2 = prueba * 100.00
//        let prueba3 = Int(prueba2)
//        print(prueba3)
//        let prueba4 = prueba2.truncatingRemainder(dividingBy: 1.0)
//        let prueba5 = Int(prueba4 * 100)
//        print(prueba5)
//
        print(lastLocation)
        let prueba = locationCW(lastLocation)
        
        print(prueba.indexLat)
        print(prueba.decLat)
        print(prueba.cuadrantLat)

        
        
        print(prueba.indexLong)
        print(prueba.decLong)
        print(prueba.cuadrantLong)
        
        
        
        
    }


}

