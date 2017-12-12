//
//  Service_Database+Community.swift
//  ConquerWorld
//
//  Created by Manu on 11/12/17.
//  Copyright © 2017 Manu. All rights reserved.
//

import Foundation
import FirebaseDatabase

extension Service_Database {
    func saveCommunityByUserUid(_ userUid: String!, _ communityName: String!, onComplete: @escaping Completion){
        let uuid = NSUUID().uuidString
        let profile: Profile = [
            "CommunityName": communityName as AnyObject,
            "uidCommunity": uuid as AnyObject
            ]
        self.userRef.child(userUid).child("ownCommunity").setValue(profile) { (error, dbref) in
            if let error = (error as NSError?){
                onComplete(error.localizedDescription, nil)
            } else {
                let profile2: Profile = [
                    "CommunityName": communityName as AnyObject,
                    "ownerUID": userUid as AnyObject
                                            ]
                self.communityConquer.child(uuid).child("profile").setValue(profile2, withCompletionBlock: { (error, dbref) in
                    if let error = (error as NSError?){
                        onComplete(error.localizedDescription,nil)
                    } else {
                        onComplete(nil, dbref)
                    }
                })
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
}  // Close Extension
