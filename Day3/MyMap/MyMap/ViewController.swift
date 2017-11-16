//
//  ViewController.swift
//  MyMap
//
//  Created by Cyberjaya 6 iTrain on 15/11/2017.
//  Copyright © 2017 Ken. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet weak var ourMap: MKMapView!
    
    var myLocationManager:CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myLocationManager = CLLocationManager()
        
        self.myLocationManager.delegate = self
        
        self.myLocationManager.requestWhenInUseAuthorization()
        
        //Adding Pin
        let HotelA = MapDemoAnnotation(coordinate: CLLocationCoordinate2DMake(3.159857,101.713380))
        
        self.ourMap.addAnnotation(HotelA)
        
        //Adding Pin
        let HotelB = MapDemoAnnotation(coordinate: CLLocationCoordinate2DMake(3.163285,101.713809))
        
        self.ourMap.addAnnotation(HotelB)
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    

    @IBAction func standardMap(_ sender: Any) {
        
        self.ourMap.mapType = .standard
    }
    
    @IBAction func satelliteMap(_ sender: Any) {
        
        self.ourMap.mapType = .satellite
    
    }
 
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {

    //Latest Location
        
        let myCurrentLocation = locations.first
        
        //How deep you would like to zoom/focus in.
        let coverRegion = MKCoordinateRegionMakeWithDistance(myCurrentLocation!.coordinate, 5000, 5000)
    

       //Start Zoom/Focus
    self.ourMap.setRegion(coverRegion, animated: true)
    
      //Stop Updating
    self.myLocationManager.stopUpdatingLocation()
        
        if annotation.isKind(of :MKUserLocation.self(<#T##NSObject#>))
            var annotationView:MKPinAnnotationView? =
                mapView.dequeueReusableAnnotationView(withIdentifier: "MyPin")
                as? MKPinAnnotationView
            
            //If emty then create a new pin.
            if annotationView == nil {
                
                annotationView = MKPinAnnotationView(annotation: annotation,
                                                    reuseIdentifier:"MyPin")
            }
            
            //Update the property if needed
            annotationView?.pinTintColor = UIcolor.blue
            
            return annotationView
        }
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

