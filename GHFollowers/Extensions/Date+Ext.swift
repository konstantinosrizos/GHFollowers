//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Konstantinos Rizos on 28/2/20.
//  Copyright © 2020 Konstantinos Rizos. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
