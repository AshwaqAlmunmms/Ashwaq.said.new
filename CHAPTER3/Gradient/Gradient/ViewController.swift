//
//  ViewController.swift
//  Gradient
//
//  Created by Ashwaq Alghamdi on 26/02/1442 AH.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewWillLayoutSubviews() //viewWillLayoutSubviews of book
    {
        createCAGradientLayer() //call funcation
        }

    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    func createCAGradientLayer() {
        
        let gradientLayer = CAGradientLayer () //متغير اسندت فيه كلاس جاهز
        
        gradientLayer.frame = self.view.bounds //
        
        gradientLayer.colors = [ //اراي للالوان
            UIColor.blue.cgColor,
            UIColor.green.cgColor,
            UIColor.red.cgColor ]
        
        
        gradientLayer.locations = [0.0, 0.50, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0) //الاتجاه افقي عمودي
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        
        self.view.layer.addSublayer(gradientLayer)
        gradientLayer.frame.size = view.frame.size
                    
       view.layer.insertSublayer(gradientLayer, at:0)

    }
    
   
}


  
