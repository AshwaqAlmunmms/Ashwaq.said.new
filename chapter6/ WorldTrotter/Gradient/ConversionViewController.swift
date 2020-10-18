//
//  ViewController.swift
//  Gradient
//
//  Created by Ashwaq Alghamdi on 26/02/1442 AH.
//

import UIKit
class ConversionViewController: UIViewController , UITextFieldDelegate {
    
override func viewDidLoad(){
super.viewDidLoad()
print("ConversionViewController loaded its view.")
        
        updateCelsiusLabel()
  view.backgroundColor = generateRandomColor()
}

    func generateRandomColor() -> UIColor {
      let colors = [UIColor.blue , UIColor.green , UIColor.red ]
        
        return colors[Int.random(in: 0...2)]
    }
    
  let numberFormatter: NumberFormatter = {
           let nf = NumberFormatter()
           nf.numberStyle = .decimal
           nf.minimumFractionDigits = 0
           nf.maximumFractionDigits = 1
       return nf
        
       }()
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    
    @IBOutlet weak var celsiusLabel: UILabel!
    
    @IBOutlet var textField: UITextField!
    
    var fahrenheitValue: Measurement<UnitTemperature>? {
            didSet {
               updateCelsiusLabel()
          }
    }
    var celsiusValue: Measurement<UnitTemperature>? {
        if let fahrenheitValue = fahrenheitValue {
    return fahrenheitValue.converted(to: .celsius)
            
        } else {
    return nil }
    }
   
    func updateCelsiusLabel() {
    if let celsiusValue = celsiusValue {
    //celsiusLabel.text = "\(celsiusValue.value)"
celsiusLabel.text =
        numberFormatter.string(from: NSNumber(value: celsiusValue.value))
    } else {
    celsiusLabel.text = "???" }
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
    @IBAction func fahrenheitFieldEditingChanged(_ textField: UITextField) {
        if let text = textField.text, let value = Double(text) {
            fahrenheitValue = Measurement(value: value, unit: .fahrenheit)
        }
        else {
               fahrenheitValue = nil }
           }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let existingTextHasDecimalSeparator = textField.text?.range(of: ".")
        let replacementTextHasDecimalSeparator = string.range(of: ".")
        let replacementTextHasMinusForBelowZero = string.range(of: "-")
        
        let numericOnly = CharacterSet.decimalDigits                                    // Bronze Challenge
        let myStringSet = CharacterSet(charactersIn: string)                            //Bronze Challenge
        
        if existingTextHasDecimalSeparator != nil && replacementTextHasDecimalSeparator != nil /* // my add for the Bronze Challenge */ || numericOnly.isSuperset(of: myStringSet) == false && replacementTextHasDecimalSeparator == nil && replacementTextHasMinusForBelowZero == nil {
            return false
        }
        else {
            return true
        }

}
}
 
