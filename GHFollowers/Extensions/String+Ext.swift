//
//  String+Ext.swift
//  GHFollowers
//
//  Created by Imre Draskovits on 25/10/2020.
//

import UIKit

// nsdateformatter.com

extension String {
    
    func convertToDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale = Locale(identifier: "en_GB")
        dateFormatter.timeZone = .current
        
        return dateFormatter.date(from: self)
    }
    
    func convertToDisplayFormat() -> String {
        guard let date = self.convertToDate() else { return "Member since Unkown" }
        return date.convertToMonthYearFormat()
    }
}
