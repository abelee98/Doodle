//
//  ViewController.swift
//  Doodle
//
//  Created by Abraham Lee on 1/15/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

// Profile View Controller for each user


import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var friend: UILabel!
    @IBOutlet weak var doodles: UILabel!
    @IBOutlet weak var edited: UILabel!
    @IBOutlet weak var userDoodles: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // have to define the datasource and delegate 
        userDoodles.dataSource = self
        userDoodles.delegate = self
        profileImage.layer.cornerRadius = 75
        profileImage.layer.masksToBounds = false
        profileImage.clipsToBounds = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navController = segue.destination as? UINavigationController,
            let settingsController = navController.topViewController as? DrawViewController else {
                return
        }
        print("in segue")
    }
}

