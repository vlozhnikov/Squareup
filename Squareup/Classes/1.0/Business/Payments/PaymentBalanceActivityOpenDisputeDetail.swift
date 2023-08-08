//
//  PaymentBalanceActivityOpenDisputeDetail.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

/// - PaymentBalanceActivityOpenDisputeDetail:
/// https://developer.squareup.com/reference/square/objects/PaymentBalanceActivityOpenDisputeDetail
open class PaymentBalanceActivityOpenDisputeDetail: Codable {
    
    /// - PaymentId: The ID of the payment associated with this activity.
    public var PaymentId: String?
    /// - DisputeId: The ID of the dispute associated with this activity.
    public var DisputeId: String?
    
    enum CodingKeys: String, CodingKey {
        case PaymentId = "payment_id"
        case DisputeId = "dispute_id"
    }
}
