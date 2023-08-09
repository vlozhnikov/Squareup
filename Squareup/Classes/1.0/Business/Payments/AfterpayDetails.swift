//
//  AfterpayDetails.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 15.06.23.
//

import Foundation

/// - AfterpayDetails: Additional details about Afterpay payments.
/// https://developer.squareup.com/reference/square/objects/AfterpayDetails
open class AfterpayDetails: Codable {
    
    /// - EmailAddress: Email address on the buyer's Afterpay account.
    /// Max Length 255
    public var EmailAddress: String?
    
    enum CodingKeys: String, CodingKey {
        case EmailAddress = "email_address"
    }
}
