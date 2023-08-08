//
//  ListCardsResponse.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class ListCardsResponse: SquareupResponse {
    
    /// - Cards: The requested list of Cards.
    var Cards: [Card]?
    /// - Cursor: The pagination cursor to be used in a subsequent request. If empty, this is the final response.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Cards = "cards"
        case Cursor = "cursor"
    }
}
