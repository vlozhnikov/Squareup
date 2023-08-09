//
//  GiftCardActivityRedeem.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.08.23.
//

import Foundation

/// - GiftCardActivityRedeem: Represents details about a REDEEM gift card activity type.
/// https://developer.squareup.com/reference/square/objects/GiftCardActivityRedeem
open class GiftCardActivityRedeem: Codable {
    
    /// - AmountMoney: The amount added to the gift card. This value is a positive integer.
    /// Applications that use a custom order processing system must specify this amount in the CreateGiftCardActivity request.
    public var AmountMoney: Money?
    /// - PaymentId: Read only The ID of the payment that represents the gift card redemption. Square populates this field if the payment was processed by Square.
    public var PaymentId: String?
    /// - ReferenceId: A client-specified ID that associates the gift card activity with an entity in another system.
    /// Applications that use a custom order processing system can use this field to track information related to an order or payment.
    public var ReferenceId: String?
    /// - Status: Read only The status of the gift card redemption. Gift cards redeemed from Square Point of Sale or the Square Seller Dashboard use a two-state process: PENDING to COMPLETED or PENDING to CANCELED. Gift cards redeemed using the Gift Card Activities API always have a COMPLETED status.
    public var Status: GiftCardActivityRedeemStatus?
    
    enum CodingKeys: String, CodingKey {
        case AmountMoney = "amount_money"
        case PaymentId = "payment_id"
        case ReferenceId = "reference_id"
        case Status = "status"
    }
}
