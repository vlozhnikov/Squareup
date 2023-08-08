//
//  GiftCardActivityRefund.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - GiftCardActivityRefund: Represents details about a REFUND gift card activity type.
/// https://developer.squareup.com/reference/square/objects/GiftCardActivityRefund
open class GiftCardActivityRefund: Codable {
    
    /// - RedeemActivityId: The ID of the refunded REDEEM gift card activity. Square populates this field if the payment_id in the corresponding RefundPayment request represents a redemption made by the same gift card. Note that you must use RefundPayment to refund a gift card payment to the same gift card if the payment was processed by Square.
    /// For applications that use a custom payment processing system, this field is required when creating a REFUND activity. The provided REDEEM activity ID must be linked to the same gift card.
    public var RedeemActivityId: String?
    /// - AmountMoney: The amount added to the gift card for the refund. This value is a positive integer.
    /// This field is required when creating a REFUND activity. The amount can represent a full or partial refund.
    public var AmountMoney: Money?
    /// - ReferenceId: A client-specified ID that associates the gift card activity with an entity in another system.
    public var ReferenceId: String?
    /// - PaymentId: Read only The ID of the refunded payment. Square populates this field if the refund is for a payment processed by Square and one of the following conditions is true:
    /// The Refunds API is used to refund a gift card payment to the same gift card.
    /// A seller initiated the refund from Square Point of Sale or the Seller Dashboard. The payment source can be the same gift card or a cross-tender payment from a credit card or a different gift card.
    public var PaymentId: String?
    
    enum CodingKeys: String, CodingKey {
        case RedeemActivityId = "redeem_activity_id"
        case AmountMoney = "amount_money"
        case ReferenceId = "reference_id"
        case PaymentId = "payment_id"
    }
}
