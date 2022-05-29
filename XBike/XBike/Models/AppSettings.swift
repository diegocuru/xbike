//
//  AppSettings.swift
//  XBike
//
//  Created by Diego Curumaco on 28/05/22.
//

import Foundation
import GoogleMaps

enum AppSettings {
    
    // MARK: - Variables
    static var onboardingShown: Bool {
        guard let savedValue = UserDefaults.standard.value(forKey: Key.onboardingShown) as? Bool else {
            return false
        }
        return savedValue
    }
    
    static var onboardingNotShown: Bool {
        !onboardingShown
    }
    
    // MARK: - Enums
    enum Key {
        static let onboardingShown = "onboarding_shown"
    }
}

// MARK: - Public Methods
extension AppSettings {
    
    static func set(onboardingShown: Bool) {
        UserDefaults.standard.set(onboardingShown, forKey: Key.onboardingShown)
    }
    
    static func configureGoogleMaps() {
        GMSServices.provideAPIKey("AIzaSyCNGO5vKW06s3iAyVNp-AycQ2xy_r8R6C8")
    }
}
