//
//  UpdateBreakTypeRequest.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

internal class UpdateBreakTypeRequest: Codable {
    
    /// - breakType: The updated BreakType.
    var breakType: BreakType?
    
    enum CodingKeys: String, CodingKey {
        case breakType = "break_type"
    }
}
