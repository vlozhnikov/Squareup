//
//  Destination.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

/// - Destination: Information about the destination against which the payout was made.
/// https://developer.squareup.com/reference/square/objects/Destination
open class Destination: Codable {
    
    /// - type: Type of the destination such as a bank account or debit card.
    public var type: DestinationType?
    /// - Id: Square issued unique ID (also known as the instrument ID) associated with this destination.
    public var Id: String?
    
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case Id = "id"
    }
}
