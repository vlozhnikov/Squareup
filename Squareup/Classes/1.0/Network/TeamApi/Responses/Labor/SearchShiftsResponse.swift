//
//  SearchShiftsResponse.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

open class SearchShiftsResponse: SquareupResponse {
    
    /// - Shifts: Shifts
    public var Shifts: [Shift]?
    /// - Cursor: An opaque cursor for fetching the next page
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Shifts = "shifts"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Shifts = try container.decodeIfPresent([Shift].self, forKey: .Shifts)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
