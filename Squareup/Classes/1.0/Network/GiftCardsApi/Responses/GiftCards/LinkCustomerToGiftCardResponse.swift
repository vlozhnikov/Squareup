//
//  LinkCustomerToGiftCardResponse.swift
//  Squareup
//
//  Created by user on 26.06.23.
//

import Foundation

open class LinkCustomerToGiftCardResponse: SquareupResponse {
    
    /// - giftCard: The gift card with the ID of the linked customer listed in the customer_ids field.
    var giftCard: GiftCard?
    
    enum CodingKeys: String, CodingKey {
        case giftCard = "gift_card"
    }
}
