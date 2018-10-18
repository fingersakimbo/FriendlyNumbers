//
//  FriendlyNumbers.swift
//  FriendlyNumbers
//
//
//  Created by Henry Saniuk on 6/7/17.
//  Copyright (c) 2017 FriendlyU, LLC. All rights reserved.
//

import Foundation

// MARK: Int extensions

extension Int {
    
    public var FNMostSimple: String {
        return "\(self.simpleFriendlyDigits)\(self.valueLetter)"
    }
    
    public var simpleFriendlyDigits: Int {
        let divisor: Double
        if self < 1000 {
            return self
        } else if self < 1000000 {
            divisor = 1000.0
            return Int(Double(self) / divisor)
        } else if self < 1000000000 {
            divisor = 1000000.0
            return Int(Double(self) / divisor)
        } else {
            divisor = 1000000000.0
            return Int(Double(self) / divisor)
        }
    }
    
    public var FNSimple: String {
        if self < 1000 {
            return "\(self)"
        } else {
            return "\(self.friendlyDigits)\(self.valueLetter)"
        }
    }
    
    public var friendlyDigits: Double {
        let divisor: Double
        if self < 1000 {
            return Double(self)
        } else if self < 1000000 {
            divisor = 1000.0
            return (Double(self) / divisor).roundTo(places: 1)
        } else if self < 1000000000 {
            divisor = 1000000.0
            return (Double(self) / divisor).roundTo(places: 1)
        } else {
            divisor = 1000000000.0
            return (Double(self) / divisor).roundTo(places: 1)
        }
    }
    
    public var valueLetter: String {
        guard self > 999 else { return "" }

        switch(self / 1000) {
        case 1..<1000: return "K"
        case 1000..<1000000: return "M"
        default: return "B"
        }
    }
}

// MARK: Double extensions

extension Double {
    func roundTo(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
