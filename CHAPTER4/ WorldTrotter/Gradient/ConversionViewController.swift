//
//  ViewController.swift
//  Gradient
//
//  Created by Ashwaq Alghamdi on 26/02/1442 AH.
//

import UIKit

class ConversionViewController: UIViewController {
    
    override func viewDidLoad(){
    super.viewDidLoad()
    print("ConversionViewController loaded its view.")
        
        
        view.backgroundColor = generateRandomColor()
    }

    func generateRandomColor() -> UIColor {
      let colors = [UIColor.blue , UIColor.green , UIColor.red ]
        
        return colors[Int.random(in: 0...2)]
    }
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    
    }
    
   



  
