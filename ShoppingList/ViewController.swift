//
//  ViewController.swift
//  ShoppingList
//
//  Created by Dhrumil Malaviya on 2020-10-27.
//  Copyright © 2020 Dhrumil Malaviya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
      
    @IBOutlet weak var textInputFIeld1: UITextField!
    @IBOutlet weak var textInputField2: UITextField!
    @IBOutlet weak var textInputField3: UITextField!
    @IBOutlet weak var textInputField4: UITextField!
    @IBOutlet weak var textInputField5: UITextField!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var lblStepper1: UILabel!
    @IBOutlet weak var lblStepper2: UILabel!
    @IBOutlet weak var lblStepper3: UILabel!
    @IBOutlet weak var lblStepper4: UILabel!
    @IBOutlet weak var lblStepper5: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.textInputFIeld1.delegate = self
        self.textInputField2.delegate = self
        self.textInputField3.delegate = self
        self.textInputField4.delegate = self
        self.textInputField5.delegate = self
    }

   
   
     func textFieldDidBeginEditing(_ textField: UITextField)
     {
             scrollView.setContentOffset(CGPoint(x: 0,y: 400), animated: true)
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        scrollView.setContentOffset(CGPoint(x: 0,y: 0), animated: true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool //dismiss the keyboard when user presses return button
       {
                 textField.resignFirstResponder()
                 return true
       }

   
   
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
    
    
    @IBAction func onCsncelBtnPressed(_ sender: UIButton)
    {
    showAlert()
    }
    //
    func showAlert()
    {
        let alert = UIAlertController(title: "Cancel", message: "Are you sure you want to delete all entries", preferredStyle:.alert )
        
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: {action in ()
          
        
        }))
        
          alert.addAction(UIAlertAction(title: "Yes", style: .default, handler:
            {
            action in
            
                        self.textInputFIeld1.text=""
                           self.textInputField2.text=""
                           self.textInputField3.text=""
                           self.textInputField4.text=""
                           self.textInputField5.text=""
            }))
        present(alert,animated: true)
    }
 
    
   
    
}

