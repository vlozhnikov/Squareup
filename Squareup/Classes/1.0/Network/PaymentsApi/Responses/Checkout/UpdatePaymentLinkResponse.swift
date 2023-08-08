//
//  UpdatePaymentLinkResponse.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class UpdatePaymentLinkResponse: SquareupResponse {
    
    /// - paymentLink: The updated payment link.
    var paymentLink: PaymentLink?
    
    enum CodingKeys: String, CodingKey {
        case paymentLink = "payment_link"
    }
}
