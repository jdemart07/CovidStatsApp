//
//  Extension.swift
//  CovidStats
//
//  Created by Justin DeMartinis on 5/30/21.
//

import Foundation
extension Int {
    
    func formatNumber () -> String{
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self))!
    }
}
extension Int64 {
    
    func formatNumber () -> String{
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self))!
    }
}
