//
//  PaymentBalanceActivitySquareCapitalReversedPaymentDetail.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

/// - PaymentBalanceActivitySquareCapitalReversedPaymentDetail:
/// https://developer.squareup.com/reference/square/objects/PaymentBalanceActivitySquareCapitalReversedPaymentDetail
open class PaymentBalanceActivitySquareCapitalReversedPaymentDetail: Codable {
    
    /// - PaymentId: The ID of the payment associated with this activity.
    public var PaymentId: String?
    
    enum CodingKeys: String, CodingKey {
        case PaymentId = "payment_id"
    }
}
