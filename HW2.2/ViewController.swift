//
//  ViewController.swift
//  HW2.2
//
//  Created by Кирилл Бахаровский on 12/6/20.
//

import UIKit
import Foundation


var redValue: CGFloat = 255
var greenValue: CGFloat = 255
var blueValue: CGFloat = 255
var alphaValue: CGFloat = 1.0

class ViewController: UIViewController {
    @IBOutlet var colorPanel: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var alphaSlider: UISlider!
    
    @IBOutlet var countRedLabel: UILabel!
    @IBOutlet var countGreenLabel: UILabel!
    @IBOutlet var countBlueLabel: UILabel!
    @IBOutlet var countAlphaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: RedSlider
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        redSlider.value = Float(redValue)
        redSlider.minimumTrackTintColor = UIColor.init(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        
        // MARK: GreenSlider
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        greenSlider.value = Float(greenValue)
        greenSlider.minimumTrackTintColor = UIColor.init(red: 0/255, green: 255/255, blue: 0/255, alpha: 1)
        
        // MARK: BlueSlider
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        blueSlider.value = Float(blueValue)
        blueSlider.minimumTrackTintColor = UIColor.init(red: 0/255, green: 0/255, blue: 255/255, alpha: 1)
        
        // MARK: AlphaSlider
        alphaSlider.minimumValue = 0
        alphaSlider.maximumValue = 1.0
        alphaSlider.value = Float(alphaValue)
        alphaSlider.minimumTrackTintColor = UIColor.init(red: 204/255, green: 204/255, blue: 204/255, alpha: 1)
        
        // MARK: ColorPanel
        colorPanel.layer.cornerRadius = 25
        
        // MARK: BackgroundView
        view.backgroundColor = UIColor.init(red: 0/255, green: 76/255, blue: 157/255, alpha: 1)
    }
    override func viewDidLayoutSubviews() {
        colorPanel.backgroundColor = UIColor.init(red: redValue/255, green: greenValue/255, blue: blueValue/255, alpha: alphaValue/1)
    }
    @IBAction func actionRedSlider(_ sender: Any) {
        countRedLabel.text = String(Int(redSlider.value))
        redValue = CGFloat(redSlider.value)
        
    }
    @IBAction func actionGreenSlider(_ sender: Any) {
        countGreenLabel.text = String(Int(greenSlider.value))
        greenValue = CGFloat(greenSlider.value)
    }
    @IBAction func actionBlueSlider(_ sender: Any) {
        countBlueLabel.text = String(Int(blueSlider.value))
        blueValue = CGFloat(blueSlider.value)
    }
    @IBAction func actionAlphaSlider(_ sender: Any) {
        alphaSlider.value = (round(10 * alphaSlider.value) / 10)
        countAlphaLabel.text = String(alphaSlider.value)
        alphaValue = CGFloat(alphaSlider.value)
    }
}

