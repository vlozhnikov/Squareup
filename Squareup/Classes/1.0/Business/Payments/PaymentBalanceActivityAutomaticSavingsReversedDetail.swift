//
//  PaymentBalanceActivityAutomaticSavingsReversedDetail.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

/// - PaymentBalanceActivityAutomaticSavingsReversedDetail:
/// - https://developer.squareup.com/reference/square/objects/PaymentBalanceActivityAutomaticSavingsReversedDetail
open class PaymentBalanceActivityAutomaticSavingsReversedDetail: Codable {
    
    /// - PaymentId: The ID of the payment associated with this activity.
    var PaymentId: String?
    /// - PayoutId: The ID of the payout associated with this activity.
    var PayoutId: String?
    
    enum CodingKeys: String, CodingKey {
        case PaymentId = "payment_id"
        case PayoutId = "payout_id"
    }
}
