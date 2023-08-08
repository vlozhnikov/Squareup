//
//  ListGiftCardsResponse.swift
//  Squareup
//
//  Created by user on 26.06.23.
//

import Foundation

open class ListGiftCardsResponse: SquareupResponse {
    
    /// - GiftCards: The requested gift cards or an empty object if none are found.
    public var GiftCards: [GiftCard]?
    /// - Cursor: When a response is truncated, it includes a cursor that you can use in a subsequent request to retrieve the next set of gift cards. If a cursor is not present, this is the final response. For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case GiftCards = "gift_cards"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.GiftCards = try container.decodeIfPresent([GiftCard].self, forKey: .GiftCards)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
