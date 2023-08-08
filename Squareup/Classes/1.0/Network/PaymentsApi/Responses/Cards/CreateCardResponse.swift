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
}
