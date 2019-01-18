//
//  HVCExtension-TableViewDataSource.swift
//  Doodle
//
//  Created by Abraham Lee on 1/16/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

import UIKit

extension HomeViewContoller: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell") as! HomeCell
        cell.userDoodle.image = UIImage(named: "doodle")

        return cell
    }
}
