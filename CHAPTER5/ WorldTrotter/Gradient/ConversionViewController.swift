//
//  ViewController.swift
//  Gradient
//
//  Created by Ashwaq Alghamdi on 26/02/1442 AH.
//

import UIKit

class ConversionViewController: UIViewController {
    
var ConversionView: UIView!
    
 override func viewDidLoad(){
 super.viewDidLoad()
 print("ConversionViewController loaded its view.")
        
 view.backgroundColor = generateRandomColor()
    //1
    let Label1 = UILabel(frame: CGRect(x: 163, y: 74, width: 88, height: 66))
    Label1.textColor = .orange
    Label1.textAlignment = NSTextAlignment.center
    Label1.text = "212"
    self.view.addSubview(Label1)
    //2
    let Labe2 = UILabel(frame: CGRect(x: 76.5, y: 228, width: 261, height: 41))
    Labe2.textColor = .orange
    Labe2.textAlignment = NSTextAlignment.center
    Labe2.text = "degrees Fahrenheit"
    self.view.addSubview(Labe2)
    //3
    let Label3 = UILabel(frame: CGRect(x: 149.5, y: 359, width: 115.5, height: 41))
    Label3.textColor = .black
    Label3.textAlignment = NSTextAlignment.center
    Label3.text = "is really"
    self.view.addSubview(Label3)
    //4
    let Label4 = UILabel(frame: CGRect(x: 166, y: 505, width: 82.5, height: 58.5))
    Label4.textColor = .orange
    Label4.textAlignment = NSTextAlignment.center
    Label4.text = "100"
    self.view.addSubview(Label4)
    //5
    let Label5 = UILabel(frame: CGRect(x:110.5, y: 642, width: 193.5, height:35))
    Label5.textColor = .orange
    Label5.textAlignment = NSTextAlignment.center
    Label5.text = "degrees Celsius"
    self.view.addSubview(Label5)
   }
    
    override func loadView() {
    ConversionView = UIView()
    view = ConversionView
    }

    func generateRandomColor() -> UIColor {
        let colors = [UIColor.darkGray , UIColor.purple , UIColor.black ]
        
        return colors[Int.random(in: 0...2)]
    }
//
//    @IBOutlet weak var label1: UILabel!
//    @IBOutlet weak var label2: UILabel!
//    @IBOutlet weak var label3: UILabel!
//    @IBOutlet weak var label4: UILabel!
//    @IBOutlet weak var label5: UILabel!
//
    }
    
   



  
