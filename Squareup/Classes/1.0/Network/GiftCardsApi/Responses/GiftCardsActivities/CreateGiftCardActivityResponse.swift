//
//  CreateGiftCardActivityResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.08.23.
//

import Foundation

open class CreateGiftCardActivityResponse: SquareupResponse {
    
    /// - giftCardActivity: The gift card activity that was created.
    public var giftCardActivity: GiftCardActivity?
    
    enum CodingKeys: String, CodingKey {
        case giftCardActivity = "gift_card_activity"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.giftCardActivity = try container.decodeIfPresent(GiftCardActivity.self, forKey: .giftCardActivity)
    }
}
