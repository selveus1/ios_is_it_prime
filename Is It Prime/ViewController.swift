//
//  ViewController.swift
//  Is It Prime
//
//  Created by Athena on 1/16/18.
//  Copyright © 2018 Sheena Elveus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var primeLabel: UILabel!
    
    @IBOutlet weak var primeField: UITextField!
    
    @IBAction func checkButton(_ sender: Any) {
        
        //get whatever entered from field
        if let numberStr = primeField.text {
            
            //set variable to check if a number is present
            let userNumber = Int(numberStr)
            
            //check if value is an actual number
            if let number = userNumber{
                let sqroot = Int(Double(sqrt(Double(number))))
                
                var isPrime = true
                var i = 2
                
                if number == 1 {
                    isPrime = false
                }
                while i <= sqroot && isPrime{
                    if number % i == 0{
                        isPrime = false
                    }
                    i+=1
                }
                
                if isPrime{
                    primeLabel.text = "\(number) is prime!"
                }else{
                    primeLabel.text = "\(number)! is NOT prime!"
                }
            }
            //number is not present, send error message
            else{
                primeLabel.text = "Please enter a positive whole number!"
            }

            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

