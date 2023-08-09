//
//  RetrieveGiftCardFromGANResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 26.06.23.
//

import Foundation

open class RetrieveGiftCardFromGANResponse: SquareupResponse {
    
    /// - giftCard: A gift card that was fetched, if present. It returns empty if an error occurred.
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
