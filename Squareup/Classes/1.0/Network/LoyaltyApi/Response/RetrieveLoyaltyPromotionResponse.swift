//
//  RetrieveLoyaltyPromotionResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

open class RetrieveLoyaltyPromotionResponse: SquareupResponse {
    
    /// - loyaltyPromotion: The retrieved loyalty promotion
    public var loyaltyPromotion: LoyaltyPromotion?
    
    enum CodingKeys: String, CodingKey {
        case loyaltyPromotion = "loyalty_promotion"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.loyaltyPromotion = try container.decodeIfPresent(LoyaltyPromotion.self, forKey: .loyaltyPromotion)
    }
}
