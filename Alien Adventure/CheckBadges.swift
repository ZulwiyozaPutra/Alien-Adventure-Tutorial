//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        
        var result = true
        var badgesRequestType = [UDRequestType]()
        
        for badge in badges {
            badgesRequestType.append(badge.requestType)
        }
        
        for requestType in requestTypes {
            if !badgesRequestType.contains(requestType) {
                result = false
            }
        }
        return result
        
    }
}
