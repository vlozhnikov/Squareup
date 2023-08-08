//
//  RetrieveGiftCardFromGANResponse.swift
//  Squareup
//
//  Created by user on 26.06.23.
//

import Foundation

open class RetrieveGiftCardFromGANResponse: SquareupResponse {
    
    /// - giftCard: A gift card that was fetched, if present. It returns empty if an error occurred.
    var giftCard: GiftCard?
    
    enum CodingKeys: String, CodingKey {
        case giftCard = "gift_card"
    }
}
