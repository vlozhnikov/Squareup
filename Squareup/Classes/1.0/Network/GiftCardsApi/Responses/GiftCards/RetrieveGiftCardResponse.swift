//
//  RetrieveGiftCardResponse.swift
//  Squareup
//
//  Created by user on 26.06.23.
//

import Foundation

open class RetrieveGiftCardResponse: SquareupResponse {
    
    /// - giftCard: The gift card retrieved.
    var giftCard: GiftCard?
    
    enum CodingKeys: String, CodingKey {
        case giftCard = "gift_card"
    }
}
