//
//  CreateBreakTypeResponse.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

open class CreateBreakTypeResponse: SquareupResponse {
    
    /// - breakType: The BreakType that was created by the request.
    public var breakType: BreakType?
    
    enum CodingKeys: String, CodingKey {
        case breakType = "break_type"
    }
}
