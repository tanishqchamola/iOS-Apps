//
//  ViewController.swift
//  Dicee
//
//  Created by Tanishq Chamola on 10/06/19.
//  Copyright © 2019 Tanishq Chamola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
        
    }

    @IBAction func roleButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        
        randomDiceIndex1 = Int.random(in:0...5) //range of numbers
        randomDiceIndex2 = Int.random(in:0...5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1]) //UIImage is a type of variable
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
}

