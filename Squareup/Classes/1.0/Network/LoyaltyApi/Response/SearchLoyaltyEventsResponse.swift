//
//  SearchLoyaltyEventsResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class SearchLoyaltyEventsResponse: SquareupResponse {
    
    /// - Events: The loyalty events that satisfy the search criteria.
    var Events: [LoyaltyEvent]?
    /// - Cursor: The pagination cursor to be used in a subsequent request. If empty, this is the final response. For more information, see Pagination.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Events = "events"
        case Cursor = "cursor"
    }
}
