//
//  AdditionalRecipient.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

/// - AdditionalRecipient: Represents an additional recipient (other than the merchant) receiving a portion of this tender.
/// https://developer.squareup.com/reference/square/objects/AdditionalRecipient
open class AdditionalRecipient: Codable {
    
    /// - LocationId: The location ID for a recipient (other than the merchant) receiving a portion of this tender.
    /// Min Length 1
    /// Max Length 50
    var LocationId: String?
    /// - Description: The description of the additional recipient.
    /// Max Length 100
    var Description: String?
    /// - AmountMoney: he amount of money distributed to the recipient.
    var AmountMoney: Money?
    /// - ReceivableId: The unique ID for the RETIRED AdditionalRecipientReceivable object. This field should be empty for any AdditionalRecipient objects created after the retirement.
    /// Max Length 192
    var ReceivableId: String?
    
    enum CodingKeys: String, CodingKey {
        case LocationId = "location_id"
        case Description = "description"
        case AmountMoney = "amount_money"
        case ReceivableId = "receivable_id"
    }
}
