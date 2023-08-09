//
//  ListSubscriptionEventsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 23.06.23.
//

import Foundation

open class ListSubscriptionEventsResponse: SquareupResponse {
    
    /// - SubscriptionEvents: The retrieved subscription events.
    public var SubscriptionEvents: [SubscriptionEvent]?
    /// - Cursor: When the total number of resulting subscription events exceeds the limit of a paged response, the response includes a cursor for you to use in a subsequent request to fetch the next set of events. If the cursor is unset, the response contains the last page of the results.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case SubscriptionEvents = "subscription_events"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.SubscriptionEvents = try container.decodeIfPresent([SubscriptionEvent].self, forKey: .SubscriptionEvents)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
