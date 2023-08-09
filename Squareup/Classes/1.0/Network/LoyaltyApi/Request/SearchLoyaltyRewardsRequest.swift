//
//  SearchLoyaltyRewardsRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

open class SearchLoyaltyRewardsRequest: Codable {
    
    /// - Query: The search criteria for the request. If empty, the endpoint retrieves all loyalty rewards in the loyalty program.
    public var Query: SearchLoyaltyRewardsRequestLoyaltyRewardQuery?
    /// - Limit: The maximum number of results to return in the response. The default value is 30.
    /// Min 1
    /// Max 30
    public var Limit: Int?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query. For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Query = "query"
        case Limit = "limit"
        case Cursor = "cursor"
    }
}
