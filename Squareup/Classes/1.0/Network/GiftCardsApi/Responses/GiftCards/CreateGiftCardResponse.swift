//
//  CreateGiftCardResponse.swift
//  Squareup
//
//  Created by user on 26.06.23.
//

import Foundation

open class CreateGiftCardResponse: SquareupResponse {
    
    /// - giftCard: The new gift card.
    var giftCard: GiftCard?
    
    enum CodingKeys: String, CodingKey {
        case giftCard = "gift_card"
    }
}
