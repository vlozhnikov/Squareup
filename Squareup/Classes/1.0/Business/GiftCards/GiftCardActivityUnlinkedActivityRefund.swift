//
//  GiftCardActivityUnlinkedActivityRefund.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - GiftCardActivityUnlinkedActivityRefund: Represents details about an UNLINKED_ACTIVITY_REFUND gift card activity type.
/// https://developer.squareup.com/reference/square/objects/GiftCardActivityUnlinkedActivityRefund
open class GiftCardActivityUnlinkedActivityRefund: Codable {
    
    /// - AmountMoney: The amount added to the gift card for the refund. This value is a positive integer.
    public var AmountMoney: Money?
    /// - ReferenceId: A client-specified ID that associates the gift card activity with an entity in another system.
    public var ReferenceId: String?
    /// - PaymentId: Read only The ID of the refunded payment. This field is not used starting in Square version 2022-06-16.
    public var PaymentId: String?
    
    enum CodingKeys: String, CodingKey {
        case AmountMoney = "amount_money"
        case ReferenceId = "reference_id"
        case PaymentId = "payment_id"
    }
}
