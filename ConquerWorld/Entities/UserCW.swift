//
//  UserCW.swift
//  ConquerWorld
//
//  Created by Manu on 12/12/17.
//  Copyright © 2017 Manu. All rights reserved.
//

import Foundation

class UserCW {
    private var _uid: String
    private var _name: String
    
    var uid: String {
        get { return _uid }
//        set { _uid = newValue}
    }
    
    var name: String {
        get { return _name }
//        set { _name = newValue }
    }
    
    init(_ uid: String, _ name: String){
        self._uid = uid
        self._name = name
    }
    
    
    
    
}
