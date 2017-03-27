//
//  TeamMemberController.swift
//  MeetTheTeam
//
//  Created by Cameron Moss on 3/27/17.
//  Copyright © 2017 Cameron Moss. All rights reserved.
//

import Foundation

class TeamMemberController {
    
    static func getTeamMembers() -> [TeamMember] {
        var teamMembers = [TeamMember]()
        if let path = Bundle.main.path(forResource: "team", ofType: "json") {
            do {
                let jsonData = try NSData(contentsOfFile: path, options: NSData.ReadingOptions.mappedIfSafe)
                do {
                    let jsonResultArray: NSArray = try JSONSerialization.jsonObject(with: jsonData as Data, options: JSONSerialization.ReadingOptions.mutableContainers) as! NSArray
                    
                    if let resultsArray : [NSDictionary] = jsonResultArray as? [NSDictionary] {
                        for resultDictionary: NSDictionary in resultsArray {
                            
                            if let teamMember = TeamMember(jsonDictionary: resultDictionary as! [String : AnyObject]) {
                                teamMembers.append(teamMember)
                            }
                        }
                    }
                }
            } catch {}
        }
        return teamMembers
    }
}
