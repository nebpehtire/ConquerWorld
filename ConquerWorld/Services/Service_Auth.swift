//
//  Service_Auth.swift
//  ConquerWorld
//
//  Created by Manu on 10/12/17.
//  Copyright © 2017 Manu. All rights reserved.
//

import Foundation
import FirebaseAuth

class Service_Auth {
    
    private static let _shared = Service_Auth()
    
    static var shared : Service_Auth {
        return _shared
    }
    
    var user : User? {
        return Auth.auth().currentUser
    }
}

extension Service_Auth {
    
    func createUserByEmail(_ email: String!, _ pssw: String!, onComplete: @escaping Completion){
        Auth.auth().createUser(withEmail: email, password: pssw) { (user, error) in
            
            if let error = (error as NSError?){
                //salida de error
                Service_Error().handleFirebaseError(error: error, onComplete: onComplete)
                
            } else {
                if user != nil {
                    //login al user
                    Auth.auth().signIn(withEmail: email, password: pssw, completion: { (user, error) in
                        if let error = (error as NSError?){
                            Service_Error().handleFirebaseError(error: error, onComplete: onComplete)
                        } else {
                            onComplete(nil, user!)
                        }
                    })
                }
            }
        }
    }
    
    
    
    func loginByEmail(_ email: String!, _ pssw: String!, onComplete: @escaping Completion){
        Auth.auth().signIn(withEmail: email, password: pssw) { (user, error) in
            if let error = (error as NSError?){
                Service_Error().handleFirebaseError(error: error, onComplete: onComplete)
            } else {
                onComplete(nil, user!)
            }
        }
    }
}


