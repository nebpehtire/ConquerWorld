//
//  QuadrantWar.swift
//  ConquerWorld
//
//  Created by Manu on 12/12/17.
//  Copyright © 2017 Manu. All rights reserved.
//

import Foundation

class QuadrantWar {
    private var _location: LocationCW
    private var _owner: UserCW?
    

    
    var location: LocationCW {
        get { return self._location }
        set { _location = newValue }
    }
    
    var owner: UserCW {
        get { return self._owner!}
        set { _owner = newValue }
    }
    
    init(_ location: LocationCW) {
        self._location = location
    }
    
    
    
    
}
