//
//  PaymentBalanceActivityOtherDetail.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

/// - PaymentBalanceActivityOtherDetail:
/// https://developer.squareup.com/reference/square/objects/PaymentBalanceActivityOtherDetail
open class PaymentBalanceActivityOtherDetail: Codable {
    
    /// - PaymentId: The ID of the payment associated with this activity.
    var PaymentId: String?
    
    enum CodingKeys: String, CodingKey {
        case PaymentId = "payment_id"
    }
}
