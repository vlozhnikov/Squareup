//
//  LoyaltyEventQuery.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

/// - LoyaltyEventQuery: Represents a query used to search for loyalty events.
/// https://developer.squareup.com/reference/square/objects/LoyaltyEventQuery
open class LoyaltyEventQuery: Codable {
    
    /// - Filter: The query filter criteria.
    public var Filter: LoyaltyEventFilter?
    
    enum CodingKeys: String, CodingKey {
        case Filter = "filter"
    }
}
