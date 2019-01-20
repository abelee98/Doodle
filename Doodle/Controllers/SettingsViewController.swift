//
//  SettingsViewController.swift
//  Doodle
//
//  Created by Abraham Lee on 1/17/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

import UIKit

// Defined this to help get information back to the main drawing screen.
// First define a new protocol as such with the info you want to pass back
protocol SettingsBackButtonDelegate: class {
    func settingsSaved (newColor: UIColor, newBrush: CGFloat)
}

class SettingsViewController: UIViewController {
    var brush: CGFloat = 10.0
    var opacity: CGFloat = 1.0
    var red: CGFloat = 0.0
    var green: CGFloat = 0.0
    var blue: CGFloat = 0.0
    
    // Second, define the delegate in the second view controller
    weak var delegate: SettingsBackButtonDelegate?
    
    @IBOutlet weak var penSizeSlider: UISlider!
    @IBOutlet weak var penSizeValue: UILabel!

    @IBOutlet weak var previewImageView: UIImageView!
    
    @IBOutlet weak var opacitySlider: UISlider!
    @IBOutlet weak var opacityValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redValue: UILabel!
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenValue: UILabel!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueValue: UILabel!
    

    @IBAction func colorPressed(_ sender: UIButton) {
        guard let pencil = Pencil(tag: sender.tag) else { return }
        let color = pencil.color
        red = color.0
        green = color.1
        blue = color.2
        redValue.text = String(format: "%1.f", red)
        greenValue.text = String(format: "%1.f", green)
        blueValue.text = String(format: "%1.f", blue)
        drawPreview()
        
    }
    @IBAction func brushChanged(_ sender: UISlider) {
        brush = CGFloat(sender.value)
        penSizeValue.text = String(format: "%1.f", brush)
        drawPreview()
    }
    @IBAction func opacityChanged(_ sender: UISlider) {
        opacity = CGFloat(sender.value)
        opacityValue.text = String(format: "%2.f", opacity/1.0)
        drawPreview()
    }
    @IBAction func redChanged(_ sender: UISlider) {
        red = CGFloat(sender.value)
        redValue.text = String(format: "%1.f", red)
        drawPreview()
    }
    @IBAction func greenChanged(_ sender: UISlider) {
        green = CGFloat(sender.value)
        greenValue.text = String(format: "%1.f", green)
        drawPreview()
    }
    @IBAction func blueChanged(_ sender: UISlider) {
        blue = CGFloat(sender.value)
        blueValue.text = String(format: "%1.f", blue)
        drawPreview()
    }
    
    func drawPreview() {
        UIGraphicsBeginImageContext(previewImageView.frame.size)
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        context.setLineCap(.round)
        context.setLineWidth(brush)
        context.setStrokeColor(UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: opacity/1.0).cgColor)
        context.move(to: CGPoint(x: 52.5, y: 52.5))
        context.addLine(to: CGPoint(x: 52.5, y: 52.5))
        context.strokePath()
        previewImageView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }
    
    // This was used to identify when the back button was pressed
    // Use the delegate's new method as defined above
    override func didMove(toParent parent: UIViewController?) {
        if parent == nil {
            delegate?.settingsSaved(newColor: UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: opacity/1.0), newBrush: brush)
        }
    }
}

