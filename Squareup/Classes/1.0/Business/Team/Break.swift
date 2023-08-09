//
//  Break.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.08.23.
//

import Foundation

/// - Break: A record of an employee's break during a shift.
/// https://developer.squareup.com/reference/square/objects/Break
open class Break: Codable {
    
    /// - Id: The UUID for this object.
    public var Id: String?
    /// - StartAt: RFC 3339; shifted to the location timezone + offset. Precision up to the minute is respected; seconds are truncated.
    /// Min Length 1
    @FormattedDate<RFC3339_Strategy> public var StartAt: Date?
    /// - EndAt: RFC 3339; shifted to the timezone + offset. Precision up to the minute is respected; seconds are truncated.
    @FormattedDate<RFC3339_Strategy> public var EndAt: Date?
    /// - BreakTypeId: The BreakType that this Break was templated on.
    /// Min Length 1
    public var BreakTypeId: String?
    /// - Name: A human-readable name.
    /// Min Length 1
    public var Name: String?
    /// - ExpectedDuration: Format: RFC-3339 P[n]Y[n]M[n]DT[n]H[n]M[n]S. The expected length of the break.
    /// Min Length 1
    public var ExpectedDuration: String?
    /// - IsPaid: Whether this break counts towards time worked for compensation purposes.
    public var IsPaid: Bool?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case StartAt = "created_at"
        case EndAt = "updated_at"
        case BreakTypeId = "break_type_id"
        case Name = "name"
        case ExpectedDuration = "expected_duration"
        case IsPaid = "is_paid"
    }
}
