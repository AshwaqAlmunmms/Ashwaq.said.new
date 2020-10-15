//
//   MapViewController.swift
//  Gradient
//
//  Created by Ashwaq Alghamdi on 27/02/1442 AH.
//

import UIKit
class MapViewController: UIViewController {
    func randomColor() -> UIColor{
    let red = CGFloat(drand48())
    let green = CGFloat(drand48())
    let blue = CGFloat(drand48())
    return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
