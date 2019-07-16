//
//  ViewController.swift
//  Calculator
//
//  Created by Tanishq Chamola on 14/06/19.
//  Copyright © 2019 Tanishq Chamola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var num = [Double]() // contains the numbers user wants to add
    var arr = [Double]() // contains the digits used by the user to create the number
    var numCount = 0
    var operatorTag: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var displayText: UILabel!
    
    @IBAction func uibuttonbuttonPressed(_ sender: Any) {
        let sender = Double((sender as AnyObject).tag)
        
        if sender < 10 {
            arr.append(sender)
            displayText.text = String(Int(displayNumber(array: arr)))
            print(num)
            
        }
        else if sender > 10 && sender < 15 {
            numCount = numCount + 1
            createNumber(array: arr)
            arr.removeAll()
            if num.count > 1 {
                operation(numbers: num,tag: sender)
            }
            operatorTag = sender
        }
        else if sender == 15 {
            numCount = numCount + 1
            createNumber(array: arr)
            arr.removeAll()
            operation(numbers: num,tag: sender)
            displayText.text = String(num[0])
            num.removeAll()
        }
        else if sender == 16 {
            arr.removeAll()
            num.removeAll()
            displayText.text = "0"
        }
        
    }
    
    func operation(numbers: [Double],tag: Double) {
        
        if operatorTag == 11 {
                operatorTag = tag
                let temp = num[0] / num[1]
                num.removeAll()
                num.append(temp)
                displayText.text = String(Int(num[0]))
        }
        
        else if operatorTag == 12 {
                operatorTag = tag
                let temp = num[0] * num[1]
                num.removeAll()
                num.append(temp)
                displayText.text = String(Int(num[0]))
        }
            
        else if operatorTag == 13 {
                operatorTag = tag
                let temp = num[0] - num[1]
                num.removeAll()
                num.append(temp)
                displayText.text = String(Int(num[0]))
        }
        
        else if operatorTag == 14 {
                operatorTag = tag
                let temp = num[0] + num[1]
                num.removeAll()
                num.append(temp)
                displayText.text = String(Int(num[0]))
        }
        
        
    }
    
    func createNumber(array: [Double]) {
        var n = array.count
        var count = 0
        var temp: Double = 0
        while n>0 {
            temp = temp + Double(pow(Double(10), Double(n-1))) * array[count]
            n = n - 1
            count = count + 1
        }
        num.append(temp)
    }
    func displayNumber(array: [Double]) -> Double {
        var n = array.count
        var count = 0
        var temp: Double = 0
        while n>0 {
            temp = temp + Double(pow(Double(10), Double(n-1))) * array[count]
            n = n - 1
            count = count + 1
        }
        return temp
    }
    
}

