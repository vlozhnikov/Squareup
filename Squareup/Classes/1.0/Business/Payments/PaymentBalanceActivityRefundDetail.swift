//
//  PaymentBalanceActivityRefundDetail.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.07.23.
//

import Foundation

/// - PaymentBalanceActivityRefundDetail:
/// https://developer.squareup.com/reference/square/objects/PaymentBalanceActivityRefundDetail
open class PaymentBalanceActivityRefundDetail: Codable {
    
    /// - PaymentId: The ID of the payment associated with this activity.
    public var PaymentId: String?
    /// - RefundId: The ID of the refund associated with this activity.
    public var RefundId: String?
    
    enum CodingKeys: String, CodingKey {
        case PaymentId = "payment_id"
        case RefundId = "refund_id"
    }
}
