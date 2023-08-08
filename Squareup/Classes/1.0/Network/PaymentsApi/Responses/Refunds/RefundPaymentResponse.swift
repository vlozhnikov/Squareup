//
//  RefundPaymentResponse.swift
//  Squareup
//
//  Created by user on 2.07.23.
//

import Foundation

open class RefundPaymentResponse: SquareupResponse {
    
    /// - Refund: The successfully created PaymentRefund.
    var Refund: PaymentRefund?
    
    enum CodingKeys: String, CodingKey {
        case Refund = "refund"
    }
}
