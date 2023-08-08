//
//  ListLoyaltyPromotionsRequest.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class ListLoyaltyPromotionsRequest: Codable {
    
    /// - Status: The status to filter the results by. If a status is provided, only loyalty promotions with the specified status are returned. Otherwise, all loyalty promotions associated with the loyalty program are returned.
    public var Status: LoyaltyPromotionStatus?
    /// - Cursor: The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see Pagination.
    public var Cursor: String?
    /// - Limit: The maximum number of results to return in a single paged response. The minimum value is 1 and the maximum value is 30. The default value is 30. For more information, see Pagination.
    public var Limit: Int?
    
    enum CodingKeys: String, CodingKey {
        case Status = "status"
        case Cursor = "cursor"
        case Limit = "limit"
    }
}
