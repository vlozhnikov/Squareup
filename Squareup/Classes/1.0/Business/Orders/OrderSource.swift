//
//  OrderSource.swift
//  Squareup
//
//  Created by user on 9.06.23.
//

import Foundation

/// - OrderSource: Represents the origination details of an order.
/// https://developer.squareup.com/reference/square/objects/OrderSource
open class OrderSource: Codable {
    
    // - Name: The name used to identify the place (physical or digital) that an order originates. If unset, the name defaults to the name of the application that created the order.
    public var Name: String?
    
    enum CodingKeys: String, CodingKey {
        case Name = "name"
    }
}
