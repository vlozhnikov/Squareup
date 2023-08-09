//
//  UpdatePaymentLinkRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.07.23.
//

import Foundation

open class UpdatePaymentLinkRequest: Codable {
    
    /// - paymentLink: The payment_link object describing the updates to apply. For more information, see Update a payment link.
    public var paymentLink: PaymentLink?
    
    enum CodingKeys: String, CodingKey {
        case paymentLink = "payment_link"
    }
}
