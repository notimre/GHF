//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Imre Draskovits on 25/10/2020.
//

import UIKit

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
