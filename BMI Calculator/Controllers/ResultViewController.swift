//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by mac on 10/03/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backgroundColor: UIImageView!
    @IBOutlet var viewBackground: UIView!
    
    var resultText : String?
    var adviceText : String?
    var colorResult : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = resultText
        adviceLabel.text = adviceText
        viewBackground.backgroundColor = colorResult
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
