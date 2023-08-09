//
//  String+Ex.swift
//  Pocket.CEO
//
//  Created by mac on 5/20/21.
//  Copyright © 2021 Vladimir Lozhnikov. All rights reserved.
//

import UIKit

public extension String {
    
    func trim() -> String {
        return self.trimmingCharacters(in: CharacterSet.whitespaces)
    }
    
    func decode_RFC3339_Date() throws -> Foundation.Date! {
        
        if self.isEmpty {
            return nil
        }
        
        let formatter = DateFormatter.RFC3339_DateFormatter
        if let date = formatter.date(from: self) {
            return date
        } else {
            throw StringError("Date string does not match format expected by formatter.")
        }
    }
    
    func decode_YYYYMMDD_Date() throws -> Foundation.Date! {
        
        if self.isEmpty {
            return nil
        }
        
        let formatter = DateFormatter.YYYYMMDD_DateFormatter
        if let date = formatter.date(from: self) {
            return date
        } else {
            throw StringError("Date string does not match format expected by formatter.")
        }
    }
    
    func decode_HHMMSS_Date() throws -> Foundation.Date! {
        
        if self.isEmpty {
            return nil
        }
        
        let formatter = DateFormatter.HHMMSS_DateFormatter
        if let date = formatter.date(from: self) {
            return date
        } else {
            throw StringError("Date string does not match format expected by formatter.")
        }
    }
    
    func replace(_ target: String, _ withString: String) -> String
    {
        let newString = NSMutableString(string: self.replacingOccurrences(of: target, with: withString, options: NSString.CompareOptions.literal, range: nil))
        return newString as String
    }
}

public extension Optional where Wrapped == String {
    var isEmptyOrNil: Bool {
        return (self ?? "").isEmpty
    }
}

public extension Optional where Wrapped == AnyObject {
    var isNil: Bool {
        return (self != nil) ? false : true
    }
}
