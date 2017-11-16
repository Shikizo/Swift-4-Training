//
//  ViewController.swift
//  WhereAmI
//
//  Created by Cyberjaya 6 iTrain on 15/11/2017.
//  Copyright © 2017 Ken. All rights reserved.
//

import UIKit

import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var lbl_latitude: UILabel!
    
    @IBOutlet weak var ldl_longitude: UILabel!
    
    @IBOutlet weak var lbl_address: UILabel!
    
    var myLocationManager:CLLocationManager!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Initialize it
        self.myLocationManager = CLLocationManager()
        
        //To be able to use the implemented Delegate Methods.
        self.myLocationManager.delegate = self
        
        //Asking Permission.
        self.myLocationManager.requestWhenInUseAuthorization()
        
        //Star Grab user location.
        self.myLocationManager.startUpdatingLocation()
        
    }
    
    //Whenever detect locations, this will be triggered
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if let currentLocation = locations.last {
           
            //Display result into the label
            self.lbl_latitude.text = "Latitude is \(currentLocation.coordinate.latitude)"
            self.ldl_longitude.text = "Longitude is \(currentLocation.coordinate.longitude)"
            
            //Coordiate to address, reverse geo-location
            CLGeocoder().reverseGeocodeLocation(currentLocation, completionHandler: {
                (placemarks, error) -> Void in
                if error == nil && placemarks!.count > 0 {
                
                    let placemark = placemarks![0]
                    
                    self.lbl_address.text = "City is \(placemark.locality!) and Country is \(placemark.country!) and Postcode is \(placemark.postalCode!) , Address 1 is \(placemark.thoroughfare!) , Address 3 is \(placemark.subThoroughfare!), State is \(placemark.administrativeArea!)"
                
                }
            })
            
        }
    }
    
    //Failed to grab location
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
      
        print(error.localizedDescription)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

