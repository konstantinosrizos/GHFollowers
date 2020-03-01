//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Konstantinos Rizos on 1/3/20.
//  Copyright © 2020 Konstantinos Rizos. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
