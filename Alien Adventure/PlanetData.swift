//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        
        let planet = Bundle.main.url(forResource: dataFile, withExtension: "json")
        let rawPlanet = try! Data(contentsOf: planet!)
        var planetArrayOfDictionaries: [[String: Any]]!
        
        do {
            planetArrayOfDictionaries = try! JSONSerialization.jsonObject(with: rawPlanet, options: JSONSerialization.ReadingOptions()) as! [[String: Any]]
        }
        
        var highestValuedPlanetName: String = ""
        
        var highestValuedPlanetValue: Int = 0
        
        for item in planetArrayOfDictionaries {
            
            let planetName = item["Name"] as! String
            
            let commonItems = item["CommonItemsDetected"] as! Int
            let uncommonItems = item["UncommonItemsDetected"] as! Int
            let rareItems = item["RareItemsDetected"] as! Int
            let legendaryItems = item["LegendaryItemsDetected"] as! Int
            
            let newHighestValuedPlanetValue = commonItems * 1 + uncommonItems * 2 + rareItems * 3 + legendaryItems * 4
            
            if newHighestValuedPlanetValue >= highestValuedPlanetValue {
                highestValuedPlanetName = planetName
                highestValuedPlanetValue = newHighestValuedPlanetValue
            }
            
        }
        
        
        
        return highestValuedPlanetName
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"
