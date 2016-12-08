//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        var itemRarityDict = [UDItemRarity: Int]()
        
        var commonAmmount: Int = 0
        var uncommonAmmount: Int = 0
        var rareAmount: Int = 0
        var legendaryAmount: Int = 0
        
        for item in inventory {
            switch item.rarity {
            case .common:
                commonAmmount += 1
            case .uncommon:
                uncommonAmmount += 1
            case .rare:
                rareAmount += 1
            default:
                legendaryAmount += 1
            }
        }
        
        itemRarityDict[.common] = commonAmmount
        itemRarityDict[.uncommon] = uncommonAmmount
        itemRarityDict[.rare] = rareAmount
        itemRarityDict[.legendary] = legendaryAmount
        
        return itemRarityDict
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
