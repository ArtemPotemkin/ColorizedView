//
//  StartViewController.swift
//  ColorizedView
//
//  Created by Артём Потёмкин on 22.06.2023.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewBackgroundColor(color: UIColor)
}

class StartViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.color = view.backgroundColor
        settingsVC.delegate = self
    }
}

// MARK: - SettingsViewControllerDelegate
extension StartViewController: SettingsViewControllerDelegate {
    func setNewBackgroundColor(color: UIColor) {
        view.backgroundColor = color
    }
}
