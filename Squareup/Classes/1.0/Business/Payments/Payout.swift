//
//  Payout.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

/// - Payout: An accounting of the amount owed the seller and record of the actual transfer to their external bank account or to the Square balance.
/// https://developer.squareup.com/reference/square/objects/Payout
open class Payout: Codable {
    
    /// - Id: A unique ID for the payout.
    /// Min Length 1
    public var Id: String?
    /// - Status: Indicates the payout status.
    public var Status: PayoutStatus?
    public var LocationId: String?
    /// - CreatedAt: The timestamp of when the payout was created and submitted for deposit to the seller's banking destination, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - UpdatedAt: The timestamp of when the payout was last updated, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var UpdatedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var UpdatedAt: Date?
    /// - AmountMoney: The amount of money involved in the payout. A positive amount indicates a deposit, and a negative amount indicates a withdrawal. This amount is never zero.
    public var AmountMoney: Money?
    /// - destination: Information about the banking destination (such as a bank account, Square checking account, or debit card) against which the payout was made.
    public var destination: Destination?
    /// - Version: The version number, which is incremented each time an update is made to this payout record. The version number helps developers receive event notifications or feeds out of order.
    public var Version: Int?
    /// - type: Indicates the payout type.
    public var type: PayoutType?
    /// - payoutFee: A list of transfer fees and any taxes on the fees assessed by Square for this payout.
    public var payoutFee: PayoutFee?
    /// - ArrivalDate: The calendar date, in ISO 8601 format (YYYY-MM-DD), when the payout is due to arrive in the seller’s banking destination.
//    var ArrivalDate: Date?
    @FormattedDate<YYYYMMDD_Strategy> public var ArrivalDate: Date?
    /// - EndToEndId: A unique ID for each Payout object that might also appear on the seller’s bank statement. You can use this ID to automate the process of reconciling each payout with the corresponding line item on the bank statement.
    public var EndToEndId: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case Status = "status"
        case LocationId = "location_id"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
        case AmountMoney = "amount_money"
        case destination = "destination"
        case Version = "version"
        case type = "type"
        case payoutFee = "payout_fee"
        case ArrivalDate = "arrival_date"
        case EndToEndId = "end_to_end_id"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.Status = try container.decodeIfPresent(PayoutStatus.self, forKey: .Status)
//        self.LocationId = try container.decodeIfPresent(String.self, forKey: .LocationId)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//            self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//        }
//        self.AmountMoney = try container.decodeIfPresent(Money.self, forKey: .AmountMoney)
//        self.destination = try container.decodeIfPresent(Destination.self, forKey: .destination)
//        self.Version = try container.decodeIfPresent(Int.self, forKey: .Version)
//        self.type = try container.decodeIfPresent(PayoutType.self, forKey: .type)
//        self.payoutFee = try container.decodeIfPresent(PayoutFee.self, forKey: .payoutFee)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .ArrivalDate), !dateString.isEmpty {
//            self.ArrivalDate = try dateString.decode_YYYYMMDD_Date(container, forKey: .ArrivalDate)
//        }
//        self.EndToEndId = try container.decodeIfPresent(String.self, forKey: .EndToEndId)
//    }
}
