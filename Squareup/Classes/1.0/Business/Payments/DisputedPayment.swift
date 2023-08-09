//
//  DisputedPayment.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.07.23.
//

import Foundation

/// - DisputedPayment: The payment the cardholder disputed.
/// https://developer.squareup.com/reference/square/objects/DisputedPayment
open class DisputedPayment: Codable {
    
    /// - PaymentId: Square-generated unique ID of the payment being disputed.
    /// Min Length 1
    /// Max Length 192
    public var PaymentId: String?
    
    enum CodingKeys: String, CodingKey {
        case PaymentId = "payment_id"
    }
}
