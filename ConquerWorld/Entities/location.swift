//
//  File.swift
//  ConquerWorld
//
//  Created by Manu on 12/12/17.
//  Copyright © 2017 Manu. All rights reserved.
//

import Foundation
import CoreLocation


struct  locationCW {
    private var _indexLat: Int
    private var _decLat: Int
    private var _cuadrantLat: Int
    private var _indexLong: Int
    private var _decLong: Int
    private var _cuadrantLong: Int
    
    var indexLat: Int {
        get { return _indexLat }
        set { _indexLat = newValue}
    }
    
    var decLat: Int {
        get { return _decLat }
        set { _decLat = newValue }
    }
    
    var cuadrantLat: Int {
        get { return _cuadrantLat }
        set { _cuadrantLat = newValue }
    }
    
    var indexLong: Int {
        get { return _indexLong }
        set { _indexLong = newValue }
    }
    
    var decLong: Int {
        get { return _decLong }
        set { _decLong = newValue }
    }
    
    var cuadrantLong: Int {
        get { return _cuadrantLong }
        set { _cuadrantLong = newValue }
    }
    

    
    init(_ location: CLLocation){
        var latitude = location.coordinate.latitude
        var longitud = location.coordinate.longitude
        
        self._indexLat = Int(latitude)
        self._indexLong = Int(longitud)
        if latitude < 0 {
            latitude = -latitude
        }
        if longitud < 0 {
            longitud = -longitud
        }
        
        let entiredecLat = latitude.truncatingRemainder(dividingBy: 1.0)*100
        let entiredecLong = longitud.truncatingRemainder(dividingBy: 1.0)*100
        
        let decLat1 = Int(entiredecLat)
        let decLong1 = Int(entiredecLong)
        
        self._decLat = decLat1
        self._decLong = decLong1
        
        let cuadLat = returnCuadrant((entiredecLat - Double(decLat1)))
        let cuadLong = returnCuadrant((entiredecLong - Double(decLong1)))
        
        self._cuadrantLat = cuadLat
        self._cuadrantLong = cuadLong
    }
}

func returnCuadrant(_ cuadrant: Double) -> Int{
    switch cuadrant {
    case 0..<0.25:
        return 1
    case 0.25..<0.5:
        return 2
    case 0.5..<0.75:
        return 3
    default:
        return 4
    }
}
