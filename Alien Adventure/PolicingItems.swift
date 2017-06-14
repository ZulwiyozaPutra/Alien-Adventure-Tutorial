//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: (UDItem) throws -> Void) -> [UDPolicingError:Int] {
        
        var errorCounterDictionary: [UDPolicingError: Int] = [.itemFromCunia: 0, .nameContainsLaser: 0, .valueLessThan10: 0]
        
        func handleError(error: UDPolicingError) {
            switch error {
            case .itemFromCunia:
                print("Item is from Cunia")
            case .nameContainsLaser:
                print("Item contains 'laser'")
            case .valueLessThan10:
                print("value of this item is under 10")
            }
            
            if let errorAmmount = errorCounterDictionary[error] {
                errorCounterDictionary[error] = errorAmmount + 1
            }
        }
        for item in inventory {
            do {
               try policingFilter(item)
            } catch UDPolicingError.itemFromCunia {
                handleError(error: .itemFromCunia)
            } catch UDPolicingError.nameContainsLaser {
                handleError(error: .nameContainsLaser)
            } catch UDPolicingError.valueLessThan10 {
                handleError(error: .valueLessThan10)
            } catch {
                print("Error is unknown")
            }
        }
        
        print(errorCounterDictionary)
        return errorCounterDictionary
    }
    
    }

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"
