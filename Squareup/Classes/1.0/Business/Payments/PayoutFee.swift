//
//  PayoutFee.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.07.23.
//

import Foundation

/// - PayoutFee: Represents a payout fee that can incur as part of a payout.
/// https://developer.squareup.com/reference/square/objects/PayoutFee
open class PayoutFee: Codable {
    
    /// - AmountMoney: The money amount of the payout fee.
    public var AmountMoney: Money?
    /// - EffectiveAt: The timestamp of when the fee takes effect, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var EffectiveAt: Date?
    /// - type: The type of fee assessed as part of the payout.
    var type: PayoutFeeType?
    
    enum CodingKeys: String, CodingKey {
        case AmountMoney = "amount_money"
        case EffectiveAt = "effective_at"
        case type = "type"
    }
}
