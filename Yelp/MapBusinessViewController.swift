//
//  MapBusinessViewController.swift
//  Yelp
//
//  Created by Melissa Phuong Nguyen on 2/19/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapBusinessViewController: UIViewController, MKMapViewDelegate{

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var mapView: MKMapView!
    
    var businesses: [Business]!
    var searchWord: String = "Restaurant"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapView.frame = self.view.bounds
        let centerLocation = CLLocation(latitude: 32.715736, longitude: -117.161087)
        goToLocation(location: centerLocation)
        self.mapView.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func goToLocation(location: CLLocation) {
        let span = MKCoordinateSpanMake(0.1, 0.1)
        let region = MKCoordinateRegionMake(location.coordinate, span)
        mapView.setRegion(region, animated: false)
    }
    
    func getYelpSearchResult(){
        Business.searchWithTerm(term: self.searchWord , completion: { (businesses: [Business]?, error: Error?) -> Void in
            self.businesses = businesses
            self.mapView.reloadInputViews()
            if let businesses = businesses {
                print("business: ", businesses[0])
                for business in businesses {
                    //                    print(business.name!)
                    //                    print(business.address!)
                }
            }
        })
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
