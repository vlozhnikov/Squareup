//
//  CreateGiftCardActivityResponse.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

open class CreateGiftCardActivityResponse: SquareupResponse {
    
    /// - giftCardActivity: The gift card activity that was created.
    public var giftCardActivity: GiftCardActivity?
    
    enum CodingKeys: String, CodingKey {
        case giftCardActivity = "gift_card_activity"
    }
}
