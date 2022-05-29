//
//  OnboardingViewController.swift
//  XBike
//
//  Created by Diego Curumaco on 27/05/22.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet private var onboardingCollectionView: UICollectionView!
    
    // MARK: - Variables
    private let cellIdentifier = "OnboardingCollectionViewCell"
    private var currentIndex: Int = 0
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        onboardingCollectionView.collectionViewLayout.invalidateLayout()
    }
}

// MARK: - UICollectionViewDataSource
extension OnboardingViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Onboarding.steps.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier,
                                                            for: indexPath) as? OnboardingCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configure(Onboarding.steps[indexPath.item].title)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        willDisplay cell: UICollectionViewCell,
                        forItemAt indexPath: IndexPath) {
        currentIndex = indexPath.item
    }
}

// MARK: - Delegate [UICollectionViewDelegate]
extension OnboardingViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let nextIndex = Onboarding.steps.index(after: currentIndex)
        guard nextIndex < Onboarding.steps.count else {
            AppSettings.set(onboardingShown: true)
            dismiss(animated: true)
            return
        }
        let indexPath = IndexPath(item: nextIndex, section: 0)
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
}

// MARK: - Delegate [UICollectionViewDelegateFlowLayout]
extension OnboardingViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.frame.size
    }
}

// MARK: - Private Methods
private extension OnboardingViewController {
    
    func setupUI() {
        onboardingCollectionView.dataSource = self
        onboardingCollectionView.delegate = self
        let nib = UINib(nibName: cellIdentifier, bundle: nil)
        onboardingCollectionView.register(nib, forCellWithReuseIdentifier: cellIdentifier)
    }
}
