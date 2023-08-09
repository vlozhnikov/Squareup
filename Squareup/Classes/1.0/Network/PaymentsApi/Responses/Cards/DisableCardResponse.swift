//
//  DisableCardResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.07.23.
//

import Foundation

open class DisableCardResponse: SquareupResponse {
    
    /// - card: The retrieved card.
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
