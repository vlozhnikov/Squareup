//
//  BuyNowPayLaterDetails.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 15.06.23.
//

import Foundation

/// - BuyNowPayLaterDetails: Additional details about a Buy Now Pay Later payment type.
/// https://developer.squareup.com/reference/square/objects/BuyNowPayLaterDetails
open class BuyNowPayLaterDetails: Codable {
    
    /// - Status: The brand used for the Buy Now Pay Later payment. The brand can be AFTERPAY, CLEARPAY or UNKNOWN.
    /// Max Length 50
    public var Brand: BuyNowPayLaterDetailsBrand?
    /// - AfterpayDetails: Details about an Afterpay payment. These details are only populated if the brand is AFTERPAY
    public var afterpayDetails: AfterpayDetails?
    /// - clearpayDetails: Details about a Clearpay payment. These details are only populated if the brand is CLEARPAY
    public var clearpayDetails: ClearpayDetails?
    
    enum CodingKeys: String, CodingKey {
        case Brand = "brand"
        case afterpayDetails = "afterpay_details"
        case clearpayDetails = "clearpay_details"
    }
}
