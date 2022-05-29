//
//  OnboardingCollectionViewCell.swift
//  XBike
//
//  Created by Diego Curumaco on 27/05/22.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {

    // MARK: - IBOutlets
    @IBOutlet private var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Public Methods
extension OnboardingCollectionViewCell {
    
    func configure(_ title: String) {
        guard titleLabel != nil else { return }
        titleLabel.text = title
    }
}
