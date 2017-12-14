//
//  Functions.swift
//  ConquerWorld
//
//  Created by Manu on 14/12/17.
//  Copyright © 2017 Manu. All rights reserved.
//

import Foundation

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

func returnCuandrantNeg(_ cu: Double) -> Int {
    let cuadrant = -cu
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



