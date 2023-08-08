//
//  PaymentBalanceActivityAutomaticSavingsDetail.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

/// - PaymentBalanceActivityAutomaticSavingsDetail:
/// - https://developer.squareup.com/reference/square/objects/PaymentBalanceActivityAutomaticSavingsDetail
open class PaymentBalanceActivityAutomaticSavingsDetail: Codable {
    
    /// - PaymentId: The ID of the payment associated with this activity.
    public var PaymentId: String?
    /// - PayoutId: The ID of the payout associated with this activity.
    public var PayoutId: String?
    
    enum CodingKeys: String, CodingKey {
        case PaymentId = "payment_id"
        case PayoutId = "payout_id"
    }
}
