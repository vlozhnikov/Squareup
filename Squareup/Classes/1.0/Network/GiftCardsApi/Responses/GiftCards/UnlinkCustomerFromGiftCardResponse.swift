//
//  UnlinkCustomerFromGiftCardResponse.swift
//  Squareup
//
//  Created by user on 26.06.23.
//

import Foundation

open class UnlinkCustomerFromGiftCardResponse: SquareupResponse {
    
    /// - giftCard: The gift card with the ID of the unlinked customer removed from the customer_ids field. If no other customers are linked, the customer_ids field is also removed.
    public var giftCard: GiftCard?
    
    enum CodingKeys: String, CodingKey {
        case giftCard = "gift_card"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.giftCard = try container.decodeIfPresent(GiftCard.self, forKey: .giftCard)
    }
}
