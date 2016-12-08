//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        
        var arrayOfItemID = [Int]()
        
        let dataFileURL = Bundle.main.url(forResource: dataFile, withExtension: "plist")!
        
        let data = NSArray(contentsOf: dataFileURL) as! [[String: Any]]
        
        for item in data {
            
            let name = item["Name"] as! String
            
            let itemID = item["ItemID"] as! Int
            
            let historicalData = item["HistoricalData"] as! [String: Any]
            
            let carbonAge = historicalData["CarbonAge"] as! Int
            
            if name.contains("Laser") && carbonAge <= 30 {
                
                arrayOfItemID.append(itemID)
                
            }
            
        }
        
        return arrayOfItemID
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"
