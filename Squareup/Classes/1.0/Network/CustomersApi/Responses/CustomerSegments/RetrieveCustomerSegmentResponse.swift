//
//  RetrieveCustomerSegmentResponse.swift
//  Squareup
//
//  Created by user on 2.08.23.
//

import Foundation

open class RetrieveCustomerSegmentResponse: SquareupResponse {
    
    /// - Segment: The retrieved customer segment.
    var Segment: CustomerSegment?
    
    enum CodingKeys: String, CodingKey {
        case Segment = "segment"
    }
}
