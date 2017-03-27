//
//  TeamMember.swift
//  MeetTheTeam
//
//  Created by Cameron Moss on 3/27/17.
//  Copyright © 2017 Cameron Moss. All rights reserved.
//

import Foundation

class TeamMember {
    
    private let kID = "id"
    private let kFirstName = "firstName"
    private let kLastName = "lastName"
    private let kAvatar = "avatar"
    private let kBio = "bio"
    private let kTitle = "title"
    
    var id: Int
    var firstName: String = ""
    var lastName: String = ""
    var avatar: String = ""
    var bio: String = ""
    var title: String = ""
    
    init?(jsonDictionary: [String: AnyObject]) {
        
        guard let id = jsonDictionary[kID] as? Int else { return nil }
        self.id = id
        self.firstName = jsonDictionary[kFirstName] as? String ?? ""
        self.lastName = jsonDictionary[kLastName] as? String ?? ""
        self.avatar = jsonDictionary[kAvatar] as? String ?? ""
        self.bio = jsonDictionary[bio] as? String ?? ""
        self.title = jsonDictionary[kTitle] as? String ?? ""
        
    }
}
