//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        
        var oldestPlanet: UDItem?
        
        var oldestPlanetAge: Int?
        
        for item in inventory {
            
            let histocicalDataItem = item.historicalData
            
            if let planetItem = histocicalDataItem["PlanetOfOrigin"] as? String {
                if planetItem == planet {
                    print("\(item.name) item matched which is \(planet)")
                    if let planetAge = histocicalDataItem["CarbonAge"] as? Int {
                        if oldestPlanet == nil {
                            oldestPlanet = item
                            oldestPlanetAge = planetAge
                        } else if oldestPlanetAge! <= planetAge {
                            oldestPlanet = item
                            oldestPlanetAge = planetAge
                        }
                    }
                }
            }
            
        }
        
        return oldestPlanet
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
