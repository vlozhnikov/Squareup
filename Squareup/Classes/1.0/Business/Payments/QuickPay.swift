//
//  QuickPay.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.07.23.
//

import Foundation

/// - QuickPay: Describes an ad hoc item and price to generate a quick pay checkout link.
/// For more information, see Quick Pay Checkout.
/// https://developer.squareup.com/reference/square/objects/QuickPay
open class QuickPay: Codable {
    
    /// - Name: The ad hoc item name. In the resulting Order, this name appears as the line item name.
    /// Min Length 1
    /// ax Length 255
    public var Name: String?
    /// - PriceMoney: The price of the item.
    public var PriceMoney: Money?
    /// - LocationId: The ID of the business location the checkout is associated with.
    public var LocationId: String?
    
    enum CodingKeys: String, CodingKey {
        case Name = "name"
        case PriceMoney = "price_money"
        case LocationId = "location_id"
    }
}
