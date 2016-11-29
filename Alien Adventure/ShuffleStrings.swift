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
        var containedS1Array: [Character] = []
        var containedS2Array: [Character] = []
        
        for c in s1.characters {
            s1Array.append(c)
        }
        
        for c in s2.characters {
            s2Array.append(c)
        }
        
        for c in shuffle.characters {
            
            shuffleArray.append(c)
            
            for i in s1Array {
                
                if c == i {
                    containedS1Array.append(i)
                }
                
            }
            
            for i in s2Array {
                
                if c == i {
                    containedS2Array.append(i)
                }
                
            }
        }
        
        //Boolean decision making
        if s1 == "" && s2 == "" && shuffle == "" {
            return true
            
        } else if !(shuffle.characters.count == (s1.characters.count + s2.characters.count)){
            return false
            
        } else {
            
            if s1Array == containedS1Array && s2Array == containedS2Array {
                return true
            } else {
                return false
            }
            
        }
        
    }
}
