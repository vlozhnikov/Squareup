//
//  ProcessingFee.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 12.06.23.
//

import Foundation

/// - ProcessingFee: Represents the Square processing fee.
/// https://developer.squareup.com/reference/square/objects/ProcessingFee
open class ProcessingFee: Codable {
    
    /// - EffectiveAt: The timestamp of when the fee takes effect, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var EffectiveAt: Date?
    /// - type: The type of fee assessed or adjusted. The fee type can be INITIAL or ADJUSTMENT.
    public var type: ProcessingFeeType?
    /// - AmountMoney: The fee amount, which might be negative, that is assessed or adjusted by Square.
    /// Positive values represent funds being assessed, while negative values represent funds being returned.
    public var AmountMoney: Money?
    
    enum CodingKeys: String, CodingKey {
        case EffectiveAt = "effective_at"
        case type = "type"
        case AmountMoney = "amount_money"
    }
}
