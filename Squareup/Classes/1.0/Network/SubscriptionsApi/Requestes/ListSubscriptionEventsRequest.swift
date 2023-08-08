//
//  ListSubscriptionEventsRequest.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

internal class ListSubscriptionEventsRequest: Codable {
    
    /// - Cursor: When the total number of resulting subscription events exceeds the limit of a paged response, specify the cursor returned from a preceding response here to fetch the next set of results. If the cursor is unset, the response contains the last page of the results.
    var Cursor: String?
    /// - Limit: The upper limit on the number of subscription events to return in a paged response.
    var Limit: Int?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Limit = "limit"
    }
}
