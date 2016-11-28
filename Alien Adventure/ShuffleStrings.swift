//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
        
        var s1Array: [Character] = []
        var s2Array: [Character] = []
        var shuffleArray: [Character] = []
        
        func arrayOfString(string: String) -> ([Character]) {
            var arrayOfCharacter: [Character] = []
            for Character in string.characters {
               arrayOfCharacter.append(Character)
            }
            return arrayOfCharacter
        }
        
        s1Array = arrayOfString(string: s1)
        s2Array = arrayOfString(string: s2)
        
        shuffleArray = arrayOfString(string: shuffle)
        
        var s1ArrayShuffled: [Character] = []
        var s2ArrayShuffled: [Character] = []
        
        //validShuffle Function
        func validShuffle(array: [Character]) -> [Character] {
            
            var shuffledArray: [Character] = []
            
            for arrayShuffledCharacter in shuffleArray {
                for arrayCharacter in array {
                    if arrayCharacter == arrayShuffledCharacter {
                        shuffledArray.append(arrayShuffledCharacter)
                    }
                }
            }
            
            return shuffledArray
        }
        
        if s1Array == validShuffle(array: s1Array) && s2Array == validShuffle(array: s2Array) {
            return true
        } else {
            return false
        }
        
    }
}
