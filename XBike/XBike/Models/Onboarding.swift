//
//  Onboarding.swift
//  XBike
//
//  Created by Diego Curumaco on 27/05/22.
//

import Foundation

enum Onboarding {
    // MARK: - Variables
    static let steps: [OnboardingStep] = [
        OnboardingStep(title: LocalizedString.Onboarding.stepOne),
        OnboardingStep(title: LocalizedString.Onboarding.stepTwo),
        OnboardingStep(title: LocalizedString.Onboarding.stepThree)
    ]
}

struct OnboardingStep {
    var title: String
}
