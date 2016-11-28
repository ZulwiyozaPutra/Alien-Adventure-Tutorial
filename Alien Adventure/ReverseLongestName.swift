//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        
        var inverntoryNameArray: [String] = []
        
        var longestName: String = ""
        
        var longestCharactersCounted: Int = 0
        
        for item in inventory {
            let inventoryName = item.name
            inverntoryNameArray.append(inventoryName)
            if inventoryName.characters.count > longestCharactersCounted {
                longestName = inventoryName
                longestCharactersCounted = longestName.characters.count
            }
        }
        
        let reversedLongestName = String(longestName.characters.reversed())
        
        return reversedLongestName
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"
