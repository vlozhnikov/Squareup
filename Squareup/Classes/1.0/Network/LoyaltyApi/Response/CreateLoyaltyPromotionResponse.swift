//
//  CreateLoyaltyPromotionResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class CreateLoyaltyPromotionResponse: SquareupResponse {
    
    /// - loyaltyPromotion: The new loyalty promotion.
    public var loyaltyPromotion: LoyaltyPromotion?
    
    enum CodingKeys: String, CodingKey {
        case loyaltyPromotion = "loyalty_promotion"
    }
}
