//
//  DVCExtension+CollectionViewController.swift
//  Doodle
//
//  Created by Abraham Lee on 1/19/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

import UIKit

extension DrawViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        let cell = collectionView.cellForItem(at: indexPath)
        guard let cellColor = cell?.backgroundColor else { return }
        color = cellColor
        guard let colors = cellColor.cgColor.components else { return }
        red = colors[0] * 255.0
        redSlider.value = Float(colors[0] * 255.0)
        redLabel.text = String(format: "%1.f", red)
        green = colors[1] * 255.0
        greenSlider.value = Float(colors[1] * 255.0)
        greenLabel.text = String(format: "%1.f", green)
        blue = colors[2] * 255.0
        blueSlider.value = Float(colors[2] * 255.0)
        blueLabel.text = String(format: "%1.f", blue)
        opacity = 1.0
        drawPreview(image: pencilImageView)
    }
}
