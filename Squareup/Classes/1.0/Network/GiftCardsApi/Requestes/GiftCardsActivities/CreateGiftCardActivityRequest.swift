//
//  CreateGiftCardActivityRequest.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

internal class CreateGiftCardActivityRequest: Codable {
    
    /// - IdempotencyKey: A unique string that identifies the CreateGiftCardActivity request.
    /// Min Length 1
    /// Max Length 128
    var IdempotencyKey: String?
    /// - GiftCardActivity: The activity to create for the gift card. This activity must specify gift_card_id or gift_card_gan for the target gift card, the location_id where the activity occurred, and the activity type along with the corresponding activity details.
    var giftCardActivity: GiftCardActivity?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case giftCardActivity = "gift_card_activity"
    }
}
