//
//  Refund.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

/// - Refund: Represents a refund processed for a Square transaction.
/// https://developer.squareup.com/reference/square/objects/Refund
open class Refund: Codable {
    
    /// - Id: The refund's unique ID.
    /// Max Length 255
    public var Id: String?
    /// - LocationId: The ID of the refund's associated location.
    /// Max Length 50
    public var LocationId: String?
    /// - TransactionId: The ID of the transaction that the refunded tender is part of.
    /// Max Length 192
    public var TransactionId: String?
    /// - TenderId: The ID of the refunded tender.
    /// Max Length  192
    public var TenderId: String?
    /// - CreatedAt: Read only The timestamp for when the refund was created, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    /// ax Length 32
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - Reason: The reason for the refund being issued.
    /// Max Length  192
    public var Reason: String?
    /// - AmountMoney: The amount of money refunded to the buyer.
    public var AmountMoney: Money?
    /// - Status: The current status of the refund (PENDING, APPROVED, REJECTED, or FAILED)
    public var Status: RefundStatus?
    /// - ProcessingFeeMoney: The amount of Square processing fee money refunded to the merchant.
    public var ProcessingFeeMoney: Money?
    /// - AdditionalRecipients: Additional recipients (other than the merchant) receiving a portion of this refund. For example, fees assessed on a refund of a purchase by a third party integration.
    public var AdditionalRecipients: [AdditionalRecipient]?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case LocationId = "location_id"
        case TransactionId = "transaction_id"
        case TenderId = "tender_id"
        case CreatedAt = "created_at"
        case Reason = "reason"
        case AmountMoney = "amount_money"
        case Status = "status"
        case ProcessingFeeMoney = "processing_fee_money"
        case AdditionalRecipients = "additional_recipients"
    }
}
