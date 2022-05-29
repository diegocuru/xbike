//
//  MainTabBarViewController.swift
//  XBike
//
//  Created by Diego Curumaco on 27/05/22.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if AppSettings.onboardingNotShown {
            presentOnboarding()
        }
    }
}

// MARK: - Private Methods
private extension MainTabBarViewController {
    
    func presentOnboarding() {
        let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() else { return }
        present(viewController, animated: true)
    }
}
