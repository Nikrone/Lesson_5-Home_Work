//
//  BeerBar.swift
//  Lesson_5 - Home_Work
//
//  Created by Evgeniy Nosko on 5.08.21.
//


import UIKit

class BeerBar {
    var allBeersToStore: ([Beer]) = []
    
    static let shared: BeerBar = BeerBar()
    
    private init() {
        self.allBeersToStore = []
    }
    
    func addBeerToStore (value: Beer) {
        allBeersToStore.append(value)
    }
    
    func pourBeerToClient() -> Bool {
        if allBeersToStore.count >= 1 {
            allBeersToStore.removeLast()
            return true
        } else {
            return false
        }
    }
    
    func closeBeerBar() {
        allBeersToStore.removeAll()
    }
    
    

    func printStatisticsBeerBar() -> String {
//        let statisticBeerBar = allBeersToStore.compactMap({beer in beer.informationAboutBeer()})
        let statisticBeerBar = allBeersToStore.map { beer in
            return beer.informationAboutBeer()
        }
        let unionString = statisticBeerBar.joined(separator: "\n \n")

        return unionString
    }
}





