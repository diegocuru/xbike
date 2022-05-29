//
//  LocalizedStrings.swift
//  XBike
//
//  Created by Diego Curumaco on 28/05/22.
//

import Foundation

enum LocalizedString {
    
    enum Onboarding {
        static let stepOne = NSLocalizedString("Extremely simple to Use", comment: "")
        static let stepTwo = NSLocalizedString("Track your time and distance", comment: "")
        static let stepThree = NSLocalizedString("See your progress and challenge yourself!", comment: "")
    }
    
    enum CurrentRide {
        static let title = NSLocalizedString("Current Ride", comment: "")
    }
}
