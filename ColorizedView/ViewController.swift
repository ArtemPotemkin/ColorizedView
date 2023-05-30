//
//  ViewController.swift
//  ColorizedView
//
//  Created by Артём Потёмкин on 30.05.2023.
//

import UIKit


class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var colorizedView: UIView!
  
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorizedView.layer.cornerRadius = 15
        setupSliders()
        
    }
    
    // MARK: - IBActions
    @IBAction func redSliderAction() {
        redValueLabel.text = String(format: "%.2f", redSlider.value)
//        colorizedView.backgroundColor = UIColor.red.withAlphaComponent(CGFloat(redSlider.value))
    }
    
    @IBAction func greenSliderAction() {
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
//        colorizedView.backgroundColor = UIColor.green.withAlphaComponent(CGFloat(greenSlider.value))
    }
    
    @IBAction func blueSliderAction() {
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
//        colorizedView.backgroundColor = UIColor.green.withAlphaComponent(CGFloat(blueSlider.value))
    }
    
    // MARK: - Private Methods
    private func setupSliders() {
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .systemBlue
    }
    

}

