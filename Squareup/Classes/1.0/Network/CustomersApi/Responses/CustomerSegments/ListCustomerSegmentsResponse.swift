//
//  ListCustomerSegmentsResponse.swift
//  Squareup
//
//  Created by user on 2.08.23.
//

import Foundation

open class ListCustomerSegmentsResponse: SquareupResponse {
    
    /// - Segments: The list of customer segments belonging to the associated Square account.
    public var Segments: [CustomerSegment]?
    /// - Cursor: A pagination cursor to be used in subsequent calls to ListCustomerSegments to retrieve the next set of query results. The cursor is only present if the request succeeded and additional results are available.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Segments = "segments"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Segments = try container.decodeIfPresent([CustomerSegment].self, forKey: .Segments)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
