//
//  PaymentBalanceActivityDepositFeeDetail.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.07.23.
//

import Foundation

/// - PaymentBalanceActivityDepositFeeDetail:
/// https://developer.squareup.com/reference/square/objects/PaymentBalanceActivityDepositFeeDetail
open class PaymentBalanceActivityDepositFeeDetail: Codable {
    
    /// - PayoutId: The ID of the payout associated with this activity.
    public var PayoutId: String?
    
    enum CodingKeys: String, CodingKey {
        case PayoutId = "payout_id"
    }
}
