//
//  TabViewController.swift
//  Doodle
//
//  Created by Abraham Lee on 1/23/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = self.storyboard?.instantiateViewController(withIdentifier: "login") else { return }
        self.tabBarController?.present(login, animated: true, completion: nil)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
