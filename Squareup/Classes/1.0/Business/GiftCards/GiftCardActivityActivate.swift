//
//  GiftCardActivityActivate.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - GiftCardActivityActivate: Represents details about an ACTIVATE gift card activity type.
/// https://developer.squareup.com/reference/square/objects/GiftCardActivityActivate
open class GiftCardActivityActivate: Codable {
    
    /// - AmountMoney: The amount added to the gift card. This value is a positive integer.
    /// Applications that use a custom order processing system must specify this amount in the CreateGiftCardActivity request.
    public var AmountMoney: Money?
    /// - OrderId: The ID of the order that contains the GIFT_CARD line item.
    /// Applications that use the Square Orders API to process orders must specify the order ID CreateGiftCardActivity request.
    public var OrderId: String?
    /// - LineItemUID: The UID of the GIFT_CARD line item in the order that represents the gift card purchase.
    /// Applications that use the Square Orders API to process orders must specify the line item UID in the CreateGiftCardActivity request.
    public var LineItemUID: String?
    /// - ReferenceId: A client-specified ID that associates the gift card activity with an entity in another system.
    /// Applications that use a custom order processing system can use this field to track information related to an order or payment.
    public var ReferenceId: String?
    /// - BuyerPaymentInstrumentIds: The payment instrument IDs used to process the gift card purchase, such as a credit card ID or bank account ID.
    /// Applications that use a custom order processing system must specify payment instrument IDs in the CreateGiftCardActivity request. Square uses this information to perform compliance checks.
    /// For applications that use the Square Orders API to process payments, Square has the necessary instrument IDs to perform compliance checks.
    public var BuyerPaymentInstrumentIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case AmountMoney = "amount_money"
        case OrderId = "order_id"
        case LineItemUID = "line_item_uid"
        case ReferenceId = "reference_id"
        case BuyerPaymentInstrumentIds = "buyer_payment_instrument_ids"
    }
}
