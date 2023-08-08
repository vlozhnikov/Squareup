//
//  PrePopulatedData.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

/// - PrePopulatedData: Describes buyer data to prepopulate in the payment form.
/// https://developer.squareup.com/reference/square/objects/PrePopulatedData
open class PrePopulatedData: Codable {
    
    /// - BuyerEmail: The buyer email to prepopulate in the payment form.
    /// Max Length 256
    public var BuyerEmail: String?
    /// - BuyerPhoneNumber: The buyer phone number to prepopulate in the payment form.
    /// Max Length 17
    public var BuyerPhoneNumber: String?
    /// - BuyerAddress: The buyer address to prepopulate in the payment form.
    public var BuyerAddress: Address?
    
    enum CodingKeys: String, CodingKey {
        case BuyerEmail = "buyer_email"
        case BuyerPhoneNumber = "buyer_phone_number"
        case BuyerAddress = "buyer_address"
    }
}
