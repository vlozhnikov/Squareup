//
//  StringError.swift
//  lockdown
//
//  Created by user on 28.06.22.
//

import Foundation

struct StringError : LocalizedError {
    
    var errorDescription: String? { return _description }
    var failureReason: String? { return _description }
    var recoverySuggestion: String? { return "" }
    var helpAnchor: String? { return "" }

    internal var _description : String

    init(_ description: String) {
        _description = description
    }
}
