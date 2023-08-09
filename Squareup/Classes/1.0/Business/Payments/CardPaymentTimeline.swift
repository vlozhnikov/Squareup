//
//  CardPaymentTimeline.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 13.06.23.
//

import Foundation

/// - CardPaymentTimeline: https://developer.squareup.com/reference/square/objects/CardPaymentTimeline
open class CardPaymentTimeline: Codable {
    
    /// - AuthorizedAt: The timestamp when the payment was authorized, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var AuthorizedAt: Date?
    /// - CapturedAt: The timestamp when the payment was captured, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var CapturedAt: Date?
    /// - VoidedAt: The timestamp when the payment was voided, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var VoidedAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case AuthorizedAt = "authorized_at"
        case CapturedAt = "captured_at"
        case VoidedAt = "voided_at"
    }
}
