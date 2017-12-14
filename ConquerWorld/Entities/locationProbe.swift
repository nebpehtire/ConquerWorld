//
//  locationProbe.swift
//  ConquerWorld
//
//  Created by Manu on 14/12/17.
//  Copyright © 2017 Manu. All rights reserved.
//

import Foundation

import CoreLocation


struct  LocationProbeCW {
    private var _latitudCW: Int
    private var _longitudeCw: Int
    
    var latitudCw: Int {
        get { return _latitudCW }
        set { _latitudCW = newValue }
    }
    
    var longitudeCW: Int {
        get { return _longitudeCw }
        set { _longitudeCw = newValue}
    }

    init(_ loc: CLLocation){
        let latitude = loc.coordinate.latitude * 100
        let longitud = loc.coordinate.longitude * 100
        
        let latitudeInt = Int(latitude) * 10
        let longitudInt = Int(longitud) * 10
        
        let restLatitud = latitude.truncatingRemainder(dividingBy: 1.0)
        let restLong = longitud.truncatingRemainder(dividingBy: 1.0)
        
        
        self._latitudCW = {
            if latitudeInt >= 0 {
                return latitudeInt + returnCuadrant(restLatitud)
            } else {
                return latitudeInt - returnCuandrantNeg(restLatitud)
            }
            
        }()
        self._longitudeCw = {
            if longitudInt >= 0 {
                return longitudInt + returnCuadrant(restLong)

            } else {
                return longitudInt - returnCuandrantNeg(restLong)
            }
        }()
            
        
        print(_latitudCW)
        print(_longitudeCw)
        
        
    }
    
}


