//
//  Tender.swift
//  Squareup
//
//  Created by user on 9.06.23.
//

import Foundation

/// - Tender: Represents a tender (i.e., a method of payment) used in a Square transaction.
/// https://developer.squareup.com/reference/square/objects/Tender
open class Tender: Codable {
    
    /// - Id: The tender's unique ID. It is the associated payment ID.
    /// Max Length 192
    var Id: String?
    /// - LocationId: The ID of the transaction's associated location.
    /// Max Length 50
    var LocationId: String?
    /// - TransactionId: The ID of the tender's associated transaction.
    /// Max Length 192
    var TransactionId: String?
    /// - CreatedAt: Read only The timestamp for when the tender was created, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    /// Max Length 32
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var CreatedAt: Date?
    /// - Note: An optional note associated with the tender at the time of payment.
    /// Max Length 500
    var Note: String?
    /// - AmountMoney: The total amount of the tender, including tip_money. If the tender has a payment_id, the total_money of the corresponding Payment will be equal to the amount_money of the tender.
    var AmountMoney: Money?
    /// - TipMoney: The tip's amount of the tender.
    var TipMoney: Money?
    /// - ProcessingFeeMoney: The amount of any Square processing fees applied to the tender.
    /// This field is not immediately populated when a new transaction is created. It is usually available after about ten seconds.
    var ProcessingFeeMoney: Money?
    /// - CustomerId: If the tender is associated with a customer or represents a customer's card on file, this is the ID of the associated customer.
    /// Max Length 191
    var CustomerId: String?
    /// - type: The type of tender, such as CARD or CASH.
    var type: TenderType?
    /// - CardDetails: The details of the card tender.
    /// This value is present only if the value of type is CARD.
    var CardDetails: TenderCardDetails?
    /// - CashDetails: The details of the cash tender.
    /// This value is present only if the value of type is CASH.
    var CashDetails: TenderCashDetails?
    /// - AdditionalRecipients: Additional recipients (other than the merchant) receiving a portion of this tender. For example, fees assessed on the purchase by a third party integration.
    var AdditionalRecipients: [AdditionalRecipient]?
    /// - PaymentId: The ID of the Payment that corresponds to this tender. This value is only present for payments created with the v2 Payments API.
    /// Max Length 192
    var PaymentId: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case LocationId = "location_id"
        case TransactionId = "transaction_id"
        case CreatedAt = "created_at"
        case Note = "note"
        case AmountMoney = "amount_money"
        case TipMoney = "tip_money"
        case ProcessingFeeMoney = "processing_fee_money"
        case CustomerId = "customer_id"
        case type = "type"
        case CardDetails = "card_details"
        case CashDetails = "cash_details"
        case AdditionalRecipients = "additional_recipients"
        case PaymentId = "payment_id"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.LocationId = try container.decodeIfPresent(String.self, forKey: .LocationId)
//        self.TransactionId = try container.decodeIfPresent(String.self, forKey: .TransactionId)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        self.Note = try container.decodeIfPresent(String.self, forKey: .Note)
//        self.AmountMoney = try container.decodeIfPresent(Money.self, forKey: .AmountMoney)
//        self.TipMoney = try container.decodeIfPresent(Money.self, forKey: .TipMoney)
//        self.ProcessingFeeMoney = try container.decodeIfPresent(Money.self, forKey: .ProcessingFeeMoney)
//        self.CustomerId = try container.decodeIfPresent(String.self, forKey: .CustomerId)
//        self.type = try container.decodeIfPresent(TenderType.self, forKey: .type)
//        self.CardDetails = try container.decodeIfPresent(TenderCardDetails.self, forKey: .CardDetails)
//        self.CashDetails = try container.decodeIfPresent(TenderCashDetails.self, forKey: .CashDetails)
//        self.AdditionalRecipients = try container.decodeIfPresent([AdditionalRecipient].self, forKey: .AdditionalRecipients)
//        self.PaymentId = try container.decodeIfPresent(String.self, forKey: .PaymentId)
//    }
}
