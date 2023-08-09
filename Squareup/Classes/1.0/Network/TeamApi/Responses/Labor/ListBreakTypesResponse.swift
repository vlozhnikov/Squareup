//
//  ListBreakTypesResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.08.23.
//

import Foundation

open class ListBreakTypesResponse: SquareupResponse {
    
    /// - BreakTypes: A page of BreakType results.
    public var BreakTypes: [BreakType]?
    /// - Cursor: The value supplied in the subsequent request to fetch the next page of BreakType results.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case BreakTypes = "break_types"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.BreakTypes = try container.decodeIfPresent([BreakType].self, forKey: .BreakTypes)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
