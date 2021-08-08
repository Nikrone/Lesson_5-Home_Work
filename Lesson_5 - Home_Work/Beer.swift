//
//  Beer.swift
//  Lesson_5 - Home_Work
//
//  Created by Evgeniy Nosko on 5.08.21.
//


import UIKit


class Beer {
    var titleBeer: String
    var countryOfOrigin: String
    var beerPrice: Double
    var bottleVolume: Double
    
    init(titleBeer: String, countryOfOrigin: String, beerPrice: Double, bottleVolume: Double) {
        self.titleBeer = titleBeer
        self.countryOfOrigin = countryOfOrigin
        self.beerPrice = beerPrice
        self.bottleVolume = bottleVolume
    }
    
    func informationAboutBeer() -> String {
        return ("Пиво 1 \n Название пива: \(titleBeer) \n Страна происхождения: \(countryOfOrigin) \n Цена: \(beerPrice) \n Объем бутылки \(bottleVolume)")
    }
    
    static func heinieken() -> Beer {
        let heiniekenBeer = Beer(
            titleBeer: "Heinieken",
            countryOfOrigin: "Германия",
            beerPrice: 2.5,
            bottleVolume: 0.5
        )
        return heiniekenBeer
    }
    
    static func zhigulevskoe() -> Beer {
        let zhigulevskoeBeer = Beer(
            titleBeer: "Жигулевское",
            countryOfOrigin: "Россия",
            beerPrice: 1.0,
            bottleVolume: 1.5
        )
        return zhigulevskoeBeer
    }
    
}
