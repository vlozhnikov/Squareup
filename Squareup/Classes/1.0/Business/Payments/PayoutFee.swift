//
//  PayoutFee.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

/// - PayoutFee: Represents a payout fee that can incur as part of a payout.
/// https://developer.squareup.com/reference/square/objects/PayoutFee
open class PayoutFee: Codable {
    
    /// - AmountMoney: The money amount of the payout fee.
    var AmountMoney: Money?
    /// - EffectiveAt: The timestamp of when the fee takes effect, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var EffectiveAt: Date?
    @FormattedDate<RFC3339_Strategy> var EffectiveAt: Date?
    /// - type: The type of fee assessed as part of the payout.
    var type: PayoutFeeType?
    
    enum CodingKeys: String, CodingKey {
        case AmountMoney = "amount_money"
        case EffectiveAt = "effective_at"
        case type = "type"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.AmountMoney = try container.decodeIfPresent(Money.self, forKey: .AmountMoney)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .EffectiveAt), !dateString.isEmpty {
//            self.EffectiveAt = try dateString.decode_RFC3339_Date(container, forKey: .EffectiveAt)
//        }
//        self.type = try container.decodeIfPresent(PayoutFeeType.self, forKey: .type)
//    }
}
