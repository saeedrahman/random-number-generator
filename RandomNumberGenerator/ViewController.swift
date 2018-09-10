//
//  ViewController.swift
//  RandomNumberGenerator
//
//  Created by Saeed Rahman on 10/9/2018.
//  Copyright © 2018 Saeed Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomNumberLabel: UILabel!
    
    
    // This function does two things: (1) generates a number between 0 and 9 and (2) assigns
    // the number to the text property of the label
    func generateRandomNumber() {
        let randomNumber = arc4random_uniform(10)
        randomNumberLabel.text = String(randomNumber)
    }
    
    // This action calls the generateRandomNumber function
    @IBAction func randomNumberButtonAction(_ sender: Any) {
        generateRandomNumber()
    }
    
    // This function is called when the view has been loaded. It's a great place to call other
    // functions which needed to be loaded on starting your app. The generateRandomNumber
    // function is being called on startup.
    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomNumber()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

