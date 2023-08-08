//
//  RetrieveLoyaltyPromotionResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class RetrieveLoyaltyPromotionResponse: SquareupResponse {
    
    /// - loyaltyPromotion: The retrieved loyalty promotion
    public var loyaltyPromotion: LoyaltyPromotion?
    
    enum CodingKeys: String, CodingKey {
        case loyaltyPromotion = "loyalty_promotion"
    }
}
