//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        var characters = [Character: Int]()
        
        var mostCommonCharacter: Character? = nil
        var mostCommonCharacterOccurance: Int = 0
        
        
        for item in inventory {
            for character in item.name.characters {
                
                if characters[character] == nil {
                    characters[character] = 1
                } else {
                    characters[character]! += 1
                }
                
            }
        }
        
        for item in characters {
            if item.value >= mostCommonCharacterOccurance {
                mostCommonCharacter = item.key
                mostCommonCharacterOccurance = item.value
            }
        }
        
        print("mostCommonCharacter is \(mostCommonCharacter!)")
        
        return mostCommonCharacter
    }
}
