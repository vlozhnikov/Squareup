//
//  PaymentBalanceActivityTaxOnFeeDetail.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.07.23.
//

import Foundation

/// - PaymentBalanceActivityTaxOnFeeDetail:
/// https://developer.squareup.com/reference/square/objects/PaymentBalanceActivityTaxOnFeeDetail
open class PaymentBalanceActivityTaxOnFeeDetail: Codable {
    
    /// - PaymentId: The ID of the payment associated with this activity.
    public var PaymentId: String?
    /// - TaxRateDescription: The description of the tax rate being applied. For example: "GST", "HST".
    public var TaxRateDescription: String?
    
    enum CodingKeys: String, CodingKey {
        case PaymentId = "payment_id"
        case TaxRateDescription = "tax_rate_description"
    }
}
