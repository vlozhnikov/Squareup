//
//  CreateLoyaltyPromotionRequest.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

internal class CreateLoyaltyPromotionRequest: Codable {
    
    /// - LoyaltyPromotion: The loyalty promotion to create.
    var LoyaltyPromotion: LoyaltyPromotion?
    /// - IdempotencyKey: A unique identifier for this request, which is used to ensure idempotency. For more information, see Idempotency.
    /// Min Length 1
    /// Max Length 128
    var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case LoyaltyPromotion = "loyalty_promotion"
        case IdempotencyKey = "idempotency_key"
    }
}
