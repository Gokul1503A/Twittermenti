//
//  ViewController.swift
//  Twittermenti
//
//  Created by Angela Yu on 17/07/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit
import CoreML

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var sentimentLabel: UILabel!
    
    
    
        let senti = try? SentimentClassifier_1(configuration: MLModelConfiguration())

    
   
    
    
   
       
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
       
    }

    @IBAction func predictPressed(_ sender: Any) {
        
        
        if let prediction = try? senti?.prediction(text: textField.text!){
            print(prediction.label)
            
            if prediction.label == "Pos"{
                sentimentLabel.text = "😁"
                print(prediction.label)
            }
            if prediction.label == "Neg"{
                sentimentLabel.text = "☹️"
                print(prediction.label)
            }
            if prediction.label == "Neutral"{
                sentimentLabel.text = "😐"
                print(prediction.label)
            }
        }
    
    
    }
    
}

