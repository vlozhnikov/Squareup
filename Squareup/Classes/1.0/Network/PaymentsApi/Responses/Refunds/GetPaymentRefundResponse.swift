//
//  GetPaymentRefundResponse.swift
//  Squareup
//
//  Created by user on 2.07.23.
//

import Foundation

open class GetPaymentRefundResponse: SquareupResponse {
    
    /// - Refund: The requested PaymentRefund.
    var Refund: PaymentRefund?
    
    enum CodingKeys: String, CodingKey {
        case Refund = "refund"
    }
}
