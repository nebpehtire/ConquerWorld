//
//  Service_Database.swift
//  ConquerWorld
//
//  Created by Manu on 10/12/17.
//  Copyright © 2017 Manu. All rights reserved.
//

import Foundation
import FirebaseDatabase

class Service_Database {
    
    
    private static let _shared = Service_Database()
    
    static var shared : Service_Database {
        return _shared
    }
    
    var mainRef: DatabaseReference {
        return Database.database().reference()
    }
    
    var userRef: DatabaseReference {
        return mainRef.child("users")
    }
    
    var globalConquer: DatabaseReference {
        return mainRef.child("globalConquer")
    }
    
    var communityConquer: DatabaseReference {
        return mainRef.child("communityConquer")
    }
    
    func globalConquerLoc(_ l: LocationCW) -> DatabaseReference {
        return globalConquer.child(String(l.indexLat)).child(String(l.indexLong)).child(String(l.decLat)).child(String(l.decLong)).child(String(l.cuadrantLat)).child(String(l.cuadrantLong))
    }
}




extension Service_Database {
    func saveUser(_ uid: String, onComplete: @escaping Completion){
        let profile : Profile = [
            "firstname": "" as AnyObject,
            "lastname:": "" as AnyObject
        ]
        
        self.userRef.child(uid).child("profile").setValue(profile) { (error, dbreference) in
            if let error = (error as NSError?){
                onComplete(error.localizedDescription, nil)
            } else {
                onComplete(nil, dbreference)
            }
        }
    }
}
