//
//  DetailViewController.swift
//  Yelp
//
//  Created by Melissa Phuong Nguyen on 2/19/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {

    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var reviewImage: UIImageView!
    @IBOutlet weak var reviewLabel: UILabel!
//    @IBOutlet weak var priceImage: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
//    var business: [String: Any] = [:]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        if let business = self.business {
//            nameLabel.text = business.name
//            posterImage.setImageWith(business.imageURL!)
//            categoryLabel.text = business.categories
//            reviewLabel.text = "\(business.reviewCount!) reviews"
            
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
