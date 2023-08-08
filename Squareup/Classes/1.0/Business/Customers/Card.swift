//
//  Card.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

/// - Card: Represents the payment details of a card to be used for payments.
/// These details are determined by the payment token generated by Web Payments SDK.
/// https://developer.squareup.com/reference/square/objects/Card
open class Card: Codable {
    
    /// - Id: Read only Unique ID for this card. Generated by Square.
    /// Max Length 64
    var Id: String?
    /// - CardBrand: Read only The card's brand.
    var cardBrand: CardBrand?
    /// - Last4: Read only The last 4 digits of the card number.
    /// Max Length 4
    var Last4: String?
    /// - ExpMonth: The expiration month of the associated card as an integer between 1 and 12.
    var ExpMonth: Int?
    /// - ExpYear: The four-digit year of the card's expiration date.
    var ExpYear: Int?
    /// - CardholderName: The name of the cardholder.
    /// Max Length 96
    var CardholderName: String?
    /// - BillingAddress: The billing address for this card.
    var BillingAddress: Address?
    /// - FingerPrint: Read only Intended as a Square-assigned identifier, based on the card number, to identify the card across multiple locations within a single application.
    /// Max Length 255
    var FingerPrint: String?
    /// - CustomerId: Required The ID of a customer created using the Customers API to be associated with the card.
    var CustomerId: String?
    /// - MerchantId:  Read only The ID of the merchant associated with the card.
    var MerchantId: String?
    /// - ReferenceId: An optional user-defined reference ID that associates this card with another entity in an external system. For example, a customer ID from an external customer management system.
    /// Max Length 128
    var ReferenceId: String?
    /// - Enabled: Read only Indicates whether or not a card can be used for payments.
    var Enabled: Bool?
    /// - CardType: Read only The type of the card. The Card object includes this field only in response to Payments API calls.
    var cardType: CardType?
    /// - PrepaidType: Read only Indicates whether the Card is prepaid or not. The Card object includes this field only in response to Payments API calls.
    var PrepaidType: CardPrepaidType?
    /// - Bin: Read only The first six digits of the card number, known as the Bank Identification Number (BIN). Only the Payments API returns this field.
    /// Max Length 6
    var Bin: String?
    /// - Version: Current version number of the card. Increments with each card update. Requests to update an existing Card object will be rejected unless the version in the request matches the current version for the Card.
    var Version: Int?
    /// - cardCoBrand: Read only The card's co-brand if available. For example, an Afterpay virtual card would have a co-brand of AFTERPAY.
    var cardCoBrand: CardCoBrand?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case cardBrand = "card_brand"
        case Last4 = "last_4"
        case ExpMonth = "exp_month"
        case ExpYear = "exp_year"
        case CardholderName = "cardholder_name"
        case BillingAddress = "billing_address"
        case FingerPrint = "fingerprint"
        case CustomerId = "customer_id"
        case MerchantId = "merchant_id"
        case ReferenceId = "reference_id"
        case Enabled = "enabled"
        case cardType = "card_type"
        case PrepaidType = "prepaid_type"
        case Bin = "bin"
        case Version = "version"
        case cardCoBrand = "card_co_brand"
    }
}
