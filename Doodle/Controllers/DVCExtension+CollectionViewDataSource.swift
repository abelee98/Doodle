//
//  DVCExtension+CollectionViewDataSource.swift
//  Doodle
//
//  Created by Abraham Lee on 1/19/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

import UIKit

extension DrawViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "colorCell", for: indexPath)
        cell.backgroundColor = UIColor.blue
        if indexPath.row == 0 {
            cell.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        } else if indexPath.row == 1 {
            cell.backgroundColor = UIColor(red: 128/255.0, green: 128/255.0, blue: 128/255.0, alpha: 1.0)
        } else if indexPath.row == 2 {
            cell.backgroundColor = UIColor(red: 255/255.0, green: 59/255.0, blue: 48/255.0, alpha: 1.0)
        } else if indexPath.row == 3 {
            cell.backgroundColor = UIColor(red: 0/255.0, green: 122/255.0, blue: 255/255.0, alpha: 1.0)
        } else if indexPath.row == 4 {
            cell.backgroundColor = UIColor(red: 88/255.0, green: 86/255.0, blue: 214/255.0, alpha: 1.0)
        } else if indexPath.row == 5 {
            cell.backgroundColor = UIColor(red: 76/255.0, green: 217/255.0, blue: 100/255.0, alpha: 1.0)
        } else if indexPath.row == 6 {
            cell.backgroundColor = UIColor(red: 139/255.0, green: 69/255.0, blue: 19/255.0, alpha: 1.0)
        } else if indexPath.row == 7 {
            cell.backgroundColor = UIColor(red: 255/255.0, green: 149/255.0, blue: 0/255.0, alpha: 1.0)
        } else if indexPath.row == 8 {
            cell.backgroundColor = UIColor(red: 255/255.0, green: 204/255.0, blue: 0/255.0, alpha: 1.0)
        }
        cell.layer.cornerRadius = 25
        cell.layer.masksToBounds = true
        return cell
    }
    
}
