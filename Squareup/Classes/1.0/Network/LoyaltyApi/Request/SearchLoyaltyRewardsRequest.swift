//
//  SearchLoyaltyRewardsRequest.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

internal class SearchLoyaltyRewardsRequest: Codable {
    
    /// - Query: The search criteria for the request. If empty, the endpoint retrieves all loyalty rewards in the loyalty program.
    var Query: SearchLoyaltyRewardsRequestLoyaltyRewardQuery?
    /// - Limit: The maximum number of results to return in the response. The default value is 30.
    /// Min 1
    /// Max 30
    var Limit: Int?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query. For more information, see Pagination.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Query = "query"
        case Limit = "limit"
        case Cursor = "cursor"
    }
}
