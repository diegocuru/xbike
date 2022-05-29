//
//  CurrentRideViewController.swift
//  XBike
//
//  Created by Diego Curumaco on 28/05/22.
//

import UIKit
import GoogleMaps

class CurrentRideViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var googleMapView: GMSMapView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

private extension CurrentRideViewController {
    
    func setupUI() {
        titleLabel.text = LocalizedString.CurrentRide.title
    }
}
