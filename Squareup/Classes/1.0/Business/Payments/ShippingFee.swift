//
//  ShippingFee.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

/// - ShippingFee: 
/// - https://developer.squareup.com/reference/square/objects/ShippingFee
open class ShippingFee: Codable {
    
    /// - Name: The name for the shipping fee.
    var Name: String?
    /// - Charge: The amount and currency for the shipping fee.
    var Charge: Money?
    
    enum CodingKeys: String, CodingKey {
        case Name = "name"
        case Charge = "charge"
    }
}
