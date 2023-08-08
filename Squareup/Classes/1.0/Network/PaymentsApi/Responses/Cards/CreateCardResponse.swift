//
//  CreateCardResponse.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class CreateCardResponse: SquareupResponse {
    
    /// - card: The card created by the request.
    public var card: Card?
    
    enum CodingKeys: String, CodingKey {
        case card = "card"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.card = try container.decodeIfPresent(Card.self, forKey: .card)
    }
}
