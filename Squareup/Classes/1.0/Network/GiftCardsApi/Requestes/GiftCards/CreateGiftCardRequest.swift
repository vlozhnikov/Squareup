//
//  CreateGiftCardRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 26.06.23.
//

import Foundation

open class CreateGiftCardRequest: Codable {
    
    /// - IdempotencyKey: A unique identifier for this request, used to ensure idempotency. For more information, see Idempotency.
    /// Min Length 1
    /// Max Length 128
    public var IdempotencyKey: String?
    /// - LocationId: The ID of the location where the gift card should be registered for reporting purposes. Gift cards can be redeemed at any of the seller's locations.
    /// Min Length 1
    public var LocationId: String?
    /// - giftCard: The gift card to create. The type field is required for this request. The gan_source and gan fields are included as follows:
    /// To direct Square to generate a 16-digit GAN, omit gan_source and gan.
    ///
    /// To provide a custom GAN, include gan_source and gan.
    ///
    /// For gan_source, specify OTHER.
    /// For gan, provide a custom GAN containing 8 to 20 alphanumeric characters. The GAN must be unique for the seller and cannot start with the same bank identification number (BIN) as major credit cards. Do not use GANs that are easy to guess (such as 12345678) because they greatly increase the risk of fraud. It is the responsibility of the developer to ensure the security of their custom GANs. For more information, see Custom GANs.
    ///
    /// To register an unused, physical gift card that the seller previously ordered from Square, include gan and provide the GAN that is printed on the gift card.
    public var giftCard: GiftCard?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case LocationId = "location_id"
        case giftCard = "gift_card"
    }
}
