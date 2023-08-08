//
//  RetrieveCardResponse.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class RetrieveCardResponse: SquareupResponse {
    
    /// - card: The retrieved card.
    public var card: Card?
    
    enum CodingKeys: String, CodingKey {
        case card = "card"
    }
}
