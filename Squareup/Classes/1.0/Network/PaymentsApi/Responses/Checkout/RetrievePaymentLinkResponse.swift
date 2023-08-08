//
//  RetrievePaymentLinkResponse.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class RetrievePaymentLinkResponse: SquareupResponse {
    
    /// - paymentLink: The payment link that is retrieved.
    var paymentLink: PaymentLink?
    
    enum CodingKeys: String, CodingKey {
        case paymentLink = "payment_link"
    }
}
