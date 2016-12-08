//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        var commonAmmount: Int = 0
        var uncommonAmmount: Int = 0
        var rareAmount: Int = 0
        var legendaryAmount: Int = 0
        
        var itemRarityDict = [UDItemRarity: Int]()
        
        for item in inventory {
            
            print("checking \(item.name)")
            
            let rarityItem = item.rarity
            
            switch rarityItem {
            case .common:
                commonAmmount = commonAmmount + 1
                print("commonAmount is \(commonAmmount) now")
            case .uncommon:
                uncommonAmmount = uncommonAmmount + 1
                print("uncommonAmount is \(uncommonAmmount) now")
            case .rare:
                rareAmount = rareAmount + 1
                print("rareAmount is \(rareAmount) now")
            case .legendary:
                legendaryAmount = legendaryAmount + 1
                print("legendaryAmount is \(legendaryAmount) now")
            }
        }
        
        print("next is common to legendary")
        print(commonAmmount)
        print(uncommonAmmount)
        print(rareAmount)
        print(legendaryAmount)
        
        
        itemRarityDict[.common] = commonAmmount
        itemRarityDict[.uncommon] = uncommonAmmount
        itemRarityDict[.rare] = rareAmount
        itemRarityDict[.legendary] = legendaryAmount
        
        return itemRarityDict
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
