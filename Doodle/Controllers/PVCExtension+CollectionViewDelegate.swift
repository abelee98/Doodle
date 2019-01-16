//
//  VCExtension+ViewController.swift
//  Doodle
//
//  Created by Abraham Lee on 1/15/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

import UIKit


extension ProfileViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}
