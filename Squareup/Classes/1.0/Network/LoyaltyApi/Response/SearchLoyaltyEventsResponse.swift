//
//  SearchLoyaltyEventsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

open class SearchLoyaltyEventsResponse: SquareupResponse {
    
    /// - Events: The loyalty events that satisfy the search criteria.
    public var Events: [LoyaltyEvent]?
    /// - Cursor: The pagination cursor to be used in a subsequent request. If empty, this is the final response. For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Events = "events"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Events = try container.decodeIfPresent([LoyaltyEvent].self, forKey: .Events)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
