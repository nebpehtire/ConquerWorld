//
//  Service_Error.swift
//  ConquerWorld
//
//  Created by Manu on 10/12/17.
//  Copyright © 2017 Manu. All rights reserved.
//

import Foundation
import FirebaseAuth

struct Service_Error {
    
    
    
    func handleFirebaseError(error: NSError, onComplete: @escaping Completion){
        print(error.debugDescription)
        if let errorCode = AuthErrorCode(rawValue: error.code){
            switch(errorCode){
                
            case .invalidEmail:
                onComplete("Email incorrecto", nil)
                break
            case .wrongPassword, .invalidCredential, .accountExistsWithDifferentCredential:
                onComplete("Contraseña incorrecta", nil)
                break
                
            case .userDisabled:
                onComplete("Este usuario no tiene permisos para entrar", nil)
                break
                
            case .emailAlreadyInUse:
                onComplete("No se ha podido crear la cuenta. Este email ya está registrado", nil)
                break
                
            case .weakPassword:
                onComplete("Contraseña demasiado débil. Añade números y letras", nil)
                break
                
            default:
                onComplete("Ha habido un problema para entrar. Prueba de nuevo.", nil)
            }
        }
    }
    
}
