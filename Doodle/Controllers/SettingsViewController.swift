//
//  SettingsViewController.swift
//  Doodle
//
//  Created by Abraham Lee on 1/17/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    var brush: CGFloat = 10.0
    var opacity: CGFloat = 1.0
    var red: CGFloat = 0.0
    var green: CGFloat = 0.0
    var blue: CGFloat = 0.0
    
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
        
        self.red = color.0
        self.green = color.1
        self.blue = color.2
        
    }
    
    
    
}
