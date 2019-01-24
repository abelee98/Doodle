//
//  HomeCollectionViewController.swift
//  Doodle
//
//  Created by Abraham Lee on 1/23/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

import UIKit

private let reuseIdentifier = "homeCell"

class HomeCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 9
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ProfileCell
    
        // Configure the cell
        cell.userImage.image = UIImage(named: "doodle")
    
        return cell
    }


}
