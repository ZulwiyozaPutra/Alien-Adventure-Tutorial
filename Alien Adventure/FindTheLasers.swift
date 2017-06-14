//
//  FindTheLasers.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func findTheLasers() -> ((UDItem) -> Bool) {
        return containsLaser
    }
    
    func containsLaser(item: UDItem) -> Bool {
        print("the item name is ", item.name)
        if item.name.contains("laser") || item.name.contains("Laser") {
            print("The item does contain laser")
            return true
        } else {
            print("The item doesnt contain laser")
            return false
        }
        
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
