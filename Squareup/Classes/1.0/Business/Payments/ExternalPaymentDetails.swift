//
//  ExternalPaymentDetails.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 13.06.23.
//

import Foundation

/// - ExternalPaymentDetails: Stores details about an external payment.
/// https://developer.squareup.com/reference/square/objects/ExternalPaymentDetails
open class ExternalPaymentDetails: Codable {
    
    /// - type: The type of external payment the seller received. It can be one of the following:
    public var type: ExternalPaymentDetailsType?
    /// - Source: A description of the external payment source. For example, "Food Delivery Service".
    /// Max Length 255
    public var Source: String?
    /// - SourceId: An ID to associate the payment to its originating source.
    /// Max Length 255
    public var SourceId: String?
    /// - SourceFeeMoney: The fees paid to the source. The amount_money minus this field is the net amount seller receives.
    public var SourceFeeMoney: Money?
    
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case Source = "source"
        case SourceId = "source_id"
        case SourceFeeMoney = "source_fee_money"
    }
}
