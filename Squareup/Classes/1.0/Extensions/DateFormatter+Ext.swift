//
//  DateFormatter+Firebase.swift
//  Pocket.CEO
//
//  Created by mac on 5/20/21.
//  Copyright © 2021 Vladimir Lozhnikov. All rights reserved.
//

import UIKit

public extension DateFormatter {
    
    static let RFC3339_DateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        formatter.calendar = Calendar(identifier: .iso8601)
        return formatter
    }()
    
    static let YYYYMMDD_DateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.calendar = Calendar(identifier: .iso8601)
        return formatter
    }()
    
    static let HHMMSS_DateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        formatter.calendar = Calendar(identifier: .iso8601)
        return formatter
    }()
}
