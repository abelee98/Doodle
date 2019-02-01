//
//  VCExtension+CollectionViewDataSource.swift
//  Doodle
//
//  Created by Abraham Lee on 1/15/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

import UIKit

extension ProfileViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width * (1/3) - 1.0, height: UIScreen.main.bounds.width * (1/3) - 1.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProfileCell
        
        cell.userImage.image = UIImage(named: "doodle")
        
        return cell
    }
}
