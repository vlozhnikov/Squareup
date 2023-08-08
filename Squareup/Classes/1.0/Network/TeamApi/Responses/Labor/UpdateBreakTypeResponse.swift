//
//  UpdateBreakTypeResponse.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

open class UpdateBreakTypeResponse: SquareupResponse {
    
    /// - breakType: The response object.
    var breakType: BreakType?
    
    enum CodingKeys: String, CodingKey {
        case breakType = "break_type"
    }
}
