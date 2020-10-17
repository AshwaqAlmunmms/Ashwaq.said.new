//
//   MapViewController.swift
//  Gradient
//
//  Created by Ashwaq Alghamdi on 27/02/1442 AH.
//
import UIKit
import MapKit



class MapViewController: UIViewController {
    
var mapView : MKMapView! //type : map
    
override func loadView() {
    mapView = MKMapView()
    view = mapView
    let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])

    segmentedControl.backgroundColor = UIColor.systemBackground
    segmentedControl.selectedSegmentIndex = 0
    segmentedControl.addTarget(self,action: #selector(mapTypeChanged(_:)),for: .valueChanged)
    segmentedControl.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(segmentedControl)

    let topConstraint = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
    let margins = view.layoutMarginsGuide
    let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
    let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
    
    topConstraint.isActive = true
    leadingConstraint.isActive = true
    trailingConstraint.isActive = true
    
    
let mySwitch = UISwitch(frame:CGRect(x: 136, y: 105, width: 0, height: 0))
           
mySwitch.isOn = false
self.view.addSubview(mySwitch)
                   
mySwitch.addTarget(self, action:
#selector(switchChanged(_ :)),
for: .valueChanged)
    
}
    
override func viewDidLoad() {
    super.viewDidLoad()
    print("MapViewController loaded its view.")
}
    
    @objc func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
    case 0:
    mapView.mapType = .standard
        case 1:
    mapView.mapType = .hybrid
        case 2:
    mapView.mapType = .satellite
        default:
    break }
    }
    
    
    @objc func switchChanged(_ mySwitch: UISwitch) {
        if mySwitch.isOn{
            mapView.pointOfInterestFilter = .includingAll
        } else{
            mapView.pointOfInterestFilter = .excludingAll
        }
    }
} 


