//
//  ViewController.swift
//  AWFE2016
//
//  Created by Nneoma Oradiegwu on 10/10/16.
//  Copyright © 2016 Nneoma Oradiegwu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textMyGuess: UITextField!

    @IBOutlet weak var labelMyText1: UILabel!
    
    @IBOutlet weak var labelMyText2: UILabel!
    
    @IBOutlet weak var labelComputerText1: UILabel!
    
    @IBOutlet weak var labelComputerText2: UILabel!
    
    @IBOutlet weak var btnGuess: UIButton!
    
    var randomNum:Int = Int(arc4random_uniform(30))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("random num is: \(randomNum)")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var guessCount = 0
    @IBAction func btnGuessPressed(_ sender: AnyObject) {
        guessCount+=1
        let labelComputerChoice = (guessCount % 2 == 0) ?
            self.labelComputerText2 : self.labelComputerText1
        let labelMyTextChoice = (guessCount % 2 == 0) ?
            self.labelMyText2 : self.labelMyText1
        
        if let myGuessNum = Int(self.textMyGuess.text!){
            labelMyTextChoice?.text = "\(myGuessNum)"
            self.textMyGuess.text = ""
            if myGuessNum > randomNum {
                labelComputerChoice?.text = "you're hot"
            } else if myGuessNum < randomNum {
                labelComputerChoice?.text = "you're cold"
            } else {
                labelComputerChoice?.text = "just right!"
            }
        } else {
            labelComputerChoice?.text = "No guess!"
        }
        
    }

}

