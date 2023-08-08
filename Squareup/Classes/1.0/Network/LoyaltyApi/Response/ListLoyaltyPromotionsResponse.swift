//
//  ListLoyaltyPromotionsResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class ListLoyaltyPromotionsResponse: SquareupResponse {
    
    /// - LoyaltyPromotions: The retrieved loyalty promotions.
    var LoyaltyPromotions: [LoyaltyPromotion]?
    /// - Cursor: The cursor to use in your next call to this endpoint to retrieve the next page of results for your original request. This field is present only if the request succeeded and additional results are available. For more information, see Pagination.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case LoyaltyPromotions = "loyalty_promotions"
        case Cursor = "cursor"
    }
}
