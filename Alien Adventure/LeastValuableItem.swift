//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        
        var leastValuableItem: UDItem? = nil
        
        var lowestValue: Int? = nil
        
        for item in inventory {
            let itemBaseValue = item.baseValue
            if lowestValue == nil {
                lowestValue = itemBaseValue
                leastValuableItem = item
            } else {
                if itemBaseValue < lowestValue! {
                    lowestValue = itemBaseValue
                    leastValuableItem = item
                    
                    
                }
            }
        }
        
        return leastValuableItem
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
