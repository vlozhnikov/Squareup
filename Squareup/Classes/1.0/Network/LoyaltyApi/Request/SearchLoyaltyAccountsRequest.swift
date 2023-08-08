//
//  SearchLoyaltyAccountsRequest.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

internal class SearchLoyaltyAccountsRequest: Codable {
    
    /// - Query: The search criteria for the request.
    var Query: SearchLoyaltyAccountsRequestLoyaltyAccountQuery?
    /// - Limit: The maximum number of results to include in the response. The default value is 30.
    /// Min 1
    /// Max 200
    var Limit: Int?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Query = "query"
        case Limit = "limit"
        case Cursor = "cursor"
    }
}
