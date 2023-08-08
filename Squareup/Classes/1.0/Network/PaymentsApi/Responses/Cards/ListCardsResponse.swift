//
//  ListCardsResponse.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class ListCardsResponse: SquareupResponse {
    
    /// - Cards: The requested list of Cards.
    public var Cards: [Card]?
    /// - Cursor: The pagination cursor to be used in a subsequent request. If empty, this is the final response.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Cards = "cards"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Cards = try container.decodeIfPresent([Card].self, forKey: .Cards)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
