//
//  RetrieveGiftCardFromNonceResponse.swift
//  Squareup
//
//  Created by user on 26.06.23.
//

import Foundation

open class RetrieveGiftCardFromNonceResponse: SquareupResponse {
    
    /// - giftCard: The retrieved gift card.
    var giftCard: GiftCard?
    
    enum CodingKeys: String, CodingKey {
        case giftCard = "gift_card"
    }
}
