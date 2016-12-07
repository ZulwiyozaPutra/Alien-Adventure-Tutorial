//
//  ItemsFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func itemsFromPlanet(inventory: [UDItem], planet: String) -> [UDItem] {
        
        var items = [UDItem]()
        
        print("////starting itemsFromPlanet Function")
        
        for item in inventory {
            
            print("//starting For in Loop for \(item.name)")
            
            let histocicalDataItem = item.historicalData
            
            if let planetItem = histocicalDataItem["PlanetOfOrigin"] as? String {
                if planetItem == planet {
                    print("\(item.name) item matched which is \(planet)")
                    items.append(item)
                } else {
                    print("\(item.name) item which is \(planet)")
                }
            }
            
            print("//ending For in Loop for \(item.name)")
            
        }
        
        print("////ending itemsFromPlanet Function")
        
        return items
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"
