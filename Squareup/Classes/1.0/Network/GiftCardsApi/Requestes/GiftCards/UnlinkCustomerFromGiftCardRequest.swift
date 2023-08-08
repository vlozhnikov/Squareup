//
//  UnlinkCustomerFromGiftCardRequest.swift
//  Squareup
//
//  Created by user on 26.06.23.
//

import Foundation

internal class UnlinkCustomerFromGiftCardRequest: Codable {
    
    /// - CustomerId: The ID of the customer to unlink from the gift card.
    /// Min Length 1
    /// Max Length 191
    var CustomerId: String?
    
    enum CodingKeys: String, CodingKey {
        case CustomerId = "customer_id"
    }
}
