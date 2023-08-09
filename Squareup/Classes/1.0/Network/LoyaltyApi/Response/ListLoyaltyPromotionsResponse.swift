//
//  ListLoyaltyPromotionsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

open class ListLoyaltyPromotionsResponse: SquareupResponse {
    
    /// - LoyaltyPromotions: The retrieved loyalty promotions.
    public var LoyaltyPromotions: [LoyaltyPromotion]?
    /// - Cursor: The cursor to use in your next call to this endpoint to retrieve the next page of results for your original request. This field is present only if the request succeeded and additional results are available. For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case LoyaltyPromotions = "loyalty_promotions"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.LoyaltyPromotions = try container.decodeIfPresent([LoyaltyPromotion].self, forKey: .LoyaltyPromotions)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
