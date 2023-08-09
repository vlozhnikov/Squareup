//
//  DigitalWalletDetails.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 15.06.23.
//

import Foundation

/// - DigitalWalletDetails: Additional details about WALLET type payments.
/// Contains only non-confidential information.
/// https://developer.squareup.com/reference/square/objects/DigitalWalletDetails
open class DigitalWalletDetails: Codable {
    
    /// - Status: The status of the WALLET payment. The status can be AUTHORIZED, CAPTURED, VOIDED, or FAILED.
    /// Max Length 50
    public var Status: DigitalWalletDetailsStatus?
    /// - Brand: The brand used for the WALLET payment. The brand can be CASH_APP, PAYPAY or UNKNOWN.
    /// Max Length 50
    public var Brand: DigitalWalletDetailsBrand?
    /// - CashAppDetails: Brand-specific details for payments with the brand of CASH_APP.
    public var cashAppDetails: CashAppDetails?
    
    enum CodingKeys: String, CodingKey {
        case Status = "status"
        case Brand = "brand"
        case cashAppDetails = "cash_app_details"
    }
}
