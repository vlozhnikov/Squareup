//
//  SearchSubscriptionsResponse.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

open class SearchSubscriptionsResponse: SquareupResponse {
    
    /// - Subscriptions: The subscriptions matching the specified query expressions
    public var Subscriptions: [Subscription]?
    /// - Cursor: When the total number of resulting subscription exceeds the limit of a paged response, the response includes a cursor for you to use in a subsequent request to fetch the next set of results. If the cursor is unset, the response contains the last page of the results.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Subscriptions = "subscriptions"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Subscriptions = try container.decodeIfPresent([Subscription].self, forKey: .Subscriptions)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
