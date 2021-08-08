//
//  ViewController.swift
//  Lesson_5 - Home_Work
//
//  Created by Evgeniy Nosko on 5.08.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonPourBeerToClient: UIButton!
    @IBOutlet weak var buttonAddBeerToStore: UIButton!
    @IBOutlet weak var buttonPrintStatisticsBeerBar: UIButton!
    @IBOutlet weak var buttonCloseBeerBar: UIButton!
    @IBOutlet weak var textInformationLabel: UILabel!
    @IBOutlet weak var textTitleApp: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        print(Beer.informationAboutBeer(Beer.heinieken()))
        
    }

    @IBAction func addBeerToStore(){
        BeerBar.shared.addBeerToStore(value: Beer.heinieken())
        textInformationLabel.text = Beer.informationAboutBeer(Beer.zhigulevskoe())()
    }
    
    @IBAction func pourBeerToClient() {
        if  BeerBar.shared.pourBeerToClient() == true {
            textInformationLabel.text = Beer.informationAboutBeer(Beer.zhigulevskoe())()
        } else {
            textInformationLabel.text = "Пива нет"
        }
    }
    
    @IBAction func closeBeerBar() {
        BeerBar.shared.closeBeerBar()
        textInformationLabel.text = "Бар закрыт"
    }
    
    @IBAction func printStatisticsBeerBar() {
        textInformationLabel.text =  BeerBar.printStatisticsBeerBar(BeerBar.shared)()
        
    }

}

