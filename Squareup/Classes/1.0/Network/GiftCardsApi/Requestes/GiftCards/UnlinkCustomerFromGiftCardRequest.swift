//
//  UnlinkCustomerFromGiftCardRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 26.06.23.
//

import Foundation

open class UnlinkCustomerFromGiftCardRequest: Codable {
    
    /// - CustomerId: The ID of the customer to unlink from the gift card.
    /// Min Length 1
    /// Max Length 191
    public var CustomerId: String?
    
    enum CodingKeys: String, CodingKey {
        case CustomerId = "customer_id"
    }
}
