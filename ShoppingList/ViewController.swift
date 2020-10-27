//
//  ViewController.swift
//  ShoppingList
//
//  Created by Dhrumil Malaviya on 2020-10-27.
//  Copyright © 2020 Dhrumil Malaviya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var lblStepper1: UILabel!
    @IBOutlet weak var lblStepper2: UILabel!
    @IBOutlet weak var lblStepper3: UILabel!
    @IBOutlet weak var lblStepper4: UILabel!
    @IBOutlet weak var lblStepper5: UILabel!
   
    @IBAction func stepper1(_ sender: UIStepper)
    {

        lblStepper1.text = String(format: "%.0f", sender.value)
    }
   
    @IBAction func stepper2(_ sender: UIStepper)
    {
        lblStepper2.text = String(format: "%.0f", sender.value)
    }
    
    
    @IBAction func stepper3(_ sender: UIStepper)
    {
        lblStepper3.text = String (format: "%.0f", sender.value)
    }
    
    
    @IBAction func stepper4(_ sender: UIStepper)
    {
        lblStepper4.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func stepper5(_ sender: UIStepper)
    {
        lblStepper5.text = String(format: "%.0f", sender.value)
    }
    
}


