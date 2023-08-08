//
//  UpdatePaymentLinkRequest.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

internal class UpdatePaymentLinkRequest: Codable {
    
    /// - paymentLink: The payment_link object describing the updates to apply. For more information, see Update a payment link.
    var paymentLink: PaymentLink?
    
    enum CodingKeys: String, CodingKey {
        case paymentLink = "payment_link"
    }
}
