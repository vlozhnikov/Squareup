//
//  PaymentBalanceActivityDisputeDetail.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

/// - PaymentBalanceActivityDisputeDetail:
/// https://developer.squareup.com/reference/square/objects/PaymentBalanceActivityDisputeDetail
open class PaymentBalanceActivityDisputeDetail: Codable {
    
    /// - PaymentId: The ID of the payment associated with this activity.
    var PaymentId: String?
    /// - DisputeId: The ID of the dispute associated with this activity.
    var DisputeId: String?
    
    enum CodingKeys: String, CodingKey {
        case PaymentId = "payment_id"
        case DisputeId = "dispute_id"
    }
}
