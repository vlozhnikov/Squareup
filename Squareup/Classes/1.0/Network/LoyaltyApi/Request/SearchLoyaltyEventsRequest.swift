//
//  SearchLoyaltyEventsRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

open class SearchLoyaltyEventsRequest: Codable {
    
    /// - Query: A set of one or more predefined query filters to apply when searching for loyalty events. The endpoint performs a logical AND to evaluate multiple filters and performs a logical OR on arrays that specifies multiple field values.
    public var Query: LoyaltyEventQuery?
    /// - Limit: The maximum number of results to include in the response. The last page might contain fewer events. The default is 30 events.
    /// Min 1
    /// Max 30
    public var Limit: Int?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query. For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Query = "query"
        case Limit = "limit"
        case Cursor = "cursor"
    }
}
