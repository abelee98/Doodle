//
//  Users.swift
//  Doodle
//
//  Created by Abraham Lee on 1/23/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

import Foundation

struct User {
    var profilePicture: String
    var name: String
    var email: String
    var userID: String
    var userDoodles: [String]
    var followersList: [String]
    var numOfFollowers: Int
    var numOfDoodles: Int
    var numOfEdits: Int
    
    init(_ dictionary: [String: Any]) {
        self.profilePicture = dictionary["profilePicture"] as? String ?? ""
        self.name = dictionary["name"] as? String ?? "User"
        self.email = dictionary["email"] as? String ?? "user@email.com"
        self.userID = dictionary["userID"] as? String ?? "userID"
        self.userDoodles = []
        self.followersList = []
        self.numOfFollowers = 0
        self.numOfDoodles = 0
        self.numOfEdits = 0
    }
}
