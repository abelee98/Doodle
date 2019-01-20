//
//  DrawViewController.swift
//  Doodle
//
//  Created by Abraham Lee on 1/17/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

import UIKit

class DrawViewController: UIViewController {
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var tempImageView: UIImageView!
    
    var prevImageView = [UIImageView]()
    
    @IBOutlet weak var colorViewConstraint: NSLayoutConstraint!
    @IBOutlet weak var colorCollection: UICollectionView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var pencilImageView: UIImageView!
    
    @IBOutlet weak var eraserConstraint: NSLayoutConstraint!
    @IBOutlet weak var eraserSlider: UISlider!
    @IBOutlet weak var eraserLabel: UILabel!
    @IBOutlet weak var eraserImageView: UIImageView!
    @IBOutlet weak var pencilSettingsConstraint: NSLayoutConstraint!
    @IBOutlet weak var pencilSlider: UISlider!
    @IBOutlet weak var pencilWidthLabel: UILabel!
    @IBOutlet weak var opacitySlider: UISlider!
    @IBOutlet weak var opacityLabel: UILabel!
    @IBOutlet weak var pencilWidthImageView: UIImageView!
    
    var lastPoint = CGPoint.zero
    var color = UIColor.black
    var brushWidth: CGFloat = 10.0
    var opacity: CGFloat = 1.0
    var swiped = false
    var red: CGFloat = 0.0
    var green: CGFloat = 0.0
    var blue: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorCollection.dataSource = self
        colorCollection.delegate = self
    }
    
    func drawLine(from fromPoint: CGPoint, to toPoint: CGPoint) {
        UIGraphicsBeginImageContext(view.frame.size)
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        tempImageView.image?.draw(in: view.bounds)
        
        context.move(to: fromPoint)
        context.addLine(to: toPoint)
        
        context.setLineCap(.round)
        context.setBlendMode(.normal)
        context.setLineWidth(brushWidth)
        context.setStrokeColor(color.cgColor)
        
        context.strokePath()
        
        tempImageView.image = UIGraphicsGetImageFromCurrentImageContext()
        tempImageView.alpha = opacity
        
        UIGraphicsEndImageContext()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        swiped = false
        lastPoint = touch.location(in: view)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        swiped = true
        let currentPoint = touch.location(in: view)
        drawLine(from: lastPoint, to: currentPoint)
        
        lastPoint = currentPoint
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !swiped {
            // draw a single point
            drawLine(from: lastPoint, to: lastPoint)
        }
        prevImageView.append(UIImageView(image: mainImageView.image))
        // Merge tempImageView into mainImageView
        UIGraphicsBeginImageContext(mainImageView.frame.size)
        mainImageView.image?.draw(in: view.bounds, blendMode: .normal, alpha: 1.0)
        tempImageView?.image?.draw(in: view.bounds, blendMode: .normal, alpha: opacity)
        mainImageView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        tempImageView.image = nil
    }
    
    @IBAction func donePressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func resetPressed(_ sender: Any) {
        prevImageView.append(UIImageView(image: mainImageView.image))
        mainImageView.image = nil
    }
    @IBAction func undoPressed(_ sender: Any) {
        guard let prev = prevImageView.popLast() else { return }
        mainImageView.image = prev.image
    }
    @IBAction func cancelPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func colorPressed(_ sender: Any) {
        if colorViewConstraint.constant == -400 {
            colorViewConstraint.constant = 50
        } else {
            colorViewConstraint.constant = -400
        }
        pencilSettingsConstraint.constant = -350
        eraserConstraint.constant = -300
        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    @IBAction func eraserPressed(_ sender: Any) {
        if eraserConstraint.constant == -300 {
            eraserConstraint.constant = 0
        } else {
            eraserConstraint.constant = -300
        }
        colorViewConstraint.constant = -400
        pencilSettingsConstraint.constant = -350
        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    @IBAction func pencilPressed(_ sender: Any) {
        if pencilSettingsConstraint.constant == -350 {
            pencilSettingsConstraint.constant = 0
        } else {
            pencilSettingsConstraint.constant = -350
        }
        eraserConstraint.constant = -300
        colorViewConstraint.constant = -400
        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    @IBAction func redChanged(_ sender: UISlider) {
        red = CGFloat(sender.value)
        redLabel.text = String(format: "%1.f", red)
        color = UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: opacity/1.0)
        drawPreview(image: pencilImageView)
    }
    @IBAction func greenChanged(_ sender: UISlider) {
        green = CGFloat(sender.value)
        greenLabel.text = String(format: "%1.f", green)
        color = UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: opacity/1.0)
        drawPreview(image: pencilImageView)
    }
    @IBAction func blueChanged(_ sender: UISlider) {
        blue = CGFloat(sender.value)
        blueLabel.text = String(format: "%1.f", blue)
        color = UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: opacity/1.0)
        drawPreview(image: pencilImageView)
    }
    @IBAction func eraserChanged(_ sender: UISlider) {
        eraserLabel.text = String(format: "%1.f", sender.value)
        color = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1/1.0)
        drawPreview(image: eraserImageView, pencilWidth: CGFloat(sender.value))
    }
    @IBAction func pencilWidthChanged(_ sender: UISlider) {
        pencilWidthLabel.text = String(format: "%1.f", sender.value)
        color = UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: opacity/1.0)
        drawPreview(image: pencilWidthImageView, pencilWidth: CGFloat(sender.value))
    }
    @IBAction func opacityChanged(_ sender: UISlider) {
        opacity = CGFloat(sender.value)
        opacityLabel.text = String(format: "%1.f", opacity)
        color = UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: opacity/1.0)
        drawPreview(image: pencilWidthImageView)
    }
    
    func drawPreview(image: UIImageView, pencilWidth: CGFloat = 30.0) {
        UIGraphicsBeginImageContext(image.frame.size)
        guard let context = UIGraphicsGetCurrentContext() else { return }
        let width = image.frame.width
        let height = image.frame.height
        context.setLineCap(.round)
        context.setLineWidth(pencilWidth)
        context.setStrokeColor(color.cgColor)
        context.move(to: CGPoint(x: width/2, y: height/2))
        context.addLine(to: CGPoint(x: width/2, y: height/2))
        context.strokePath()
        image.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settings = segue.destination as? SettingsViewController else { return }
        settings.delegate = self
    }
    
}

// Make sure that the view conforms to the new protocol
// And do what you want with the data
extension DrawViewController: SettingsBackButtonDelegate {
    func settingsSaved(newColor: UIColor, newBrush: CGFloat) {
        brushWidth = newBrush
        color = newColor
    }
}
