//
//  ViewController.swift
//  Is It Prime
//
//  Created by Mac on 2017/1/26.
//  Copyright © 2017年 SwiftCourse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var numberTextField: UITextField!
    
    @IBAction func isItPrime(_ sender: Any) {
        
        var isPrime = true
        let number = Int(numberTextField.text!)
 
        if number != nil {
            if number! == 1 {
                isPrime = false
            }
            
            if number != nil && number! != 1 {

                for n in 2..<number! {
                    if number! % n == 0 {
                        isPrime = false
                    }
                }
                
            }
            switch isPrime {
            case true:
                result.text = "\(number!) is prime"
            case false:
                result.text = "\(number!) is not prime"
            }

        } else {
            result.text = "please enter a positive whole number"
        }
        
        
        
        
        
    }
    
    
    @IBOutlet var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

