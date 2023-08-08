//
//  ListBreakTypesResponse.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

open class ListBreakTypesResponse: SquareupResponse {
    
    /// - BreakTypes: A page of BreakType results.
    var BreakTypes: [BreakType]?
    /// - Cursor: The value supplied in the subsequent request to fetch the next page of BreakType results.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case BreakTypes = "break_types"
        case Cursor = "cursor"
    }
}
