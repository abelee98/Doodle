//
//  HVCExtension-TableViewDelegate.swift
//  Doodle
//
//  Created by Abraham Lee on 1/16/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

import UIKit

extension HomeViewContoller: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
