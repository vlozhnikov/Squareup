//
//  RetrieveCustomerSegmentResponse.swift
//  Squareup
//
//  Created by user on 2.08.23.
//

import Foundation

open class RetrieveCustomerSegmentResponse: SquareupResponse {
    
    /// - Segment: The retrieved customer segment.
    public var Segment: CustomerSegment?
    
    enum CodingKeys: String, CodingKey {
        case Segment = "segment"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Segment = try container.decodeIfPresent(CustomerSegment.self, forKey: .Segment)
    }
}
