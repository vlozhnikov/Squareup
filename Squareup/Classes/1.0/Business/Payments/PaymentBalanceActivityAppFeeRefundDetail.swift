//
//  PaymentBalanceActivityAppFeeRefundDetail.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

/// - PaymentBalanceActivityAppFeeRefundDetail:
/// - https://developer.squareup.com/reference/square/objects/PaymentBalanceActivityAppFeeRefundDetail
open class PaymentBalanceActivityAppFeeRefundDetail: Codable {
    
    /// - PaymentId: The ID of the payment associated with this activity.
    public var PaymentId: String?
    /// - RefundId: The ID of the refund associated with this activity.
    public var RefundId: String?
    /// - LocationId: The ID of the location of the merchant associated with the payment activity
    public var LocationId: String?
    
    enum CodingKeys: String, CodingKey {
        case PaymentId = "payment_id"
        case RefundId = "refund_id"
        case LocationId = "location_id"
    }
}
