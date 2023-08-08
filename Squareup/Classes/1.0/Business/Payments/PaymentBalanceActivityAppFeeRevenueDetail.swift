//
//  PaymentBalanceActivityAppFeeRevenueDetail.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

/// - PaymentBalanceActivityAppFeeRevenueDetail: 
/// https://developer.squareup.com/reference/square/objects/PaymentBalanceActivityAppFeeRevenueDetail
open class PaymentBalanceActivityAppFeeRevenueDetail: Codable {
    
    /// - PaymentId: The ID of the payment associated with this activity
    var PaymentId: String?
    /// - LocationId: The ID of the location of the merchant associated with the payment activity
    var LocationId: String?
    
    enum CodingKeys: String, CodingKey {
        case PaymentId = "payment_id"
        case LocationId = "location_id"
    }
}
