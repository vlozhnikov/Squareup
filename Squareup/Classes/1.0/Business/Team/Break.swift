//
//  Break.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - Break: A record of an employee's break during a shift.
/// https://developer.squareup.com/reference/square/objects/Break
open class Break: Codable {
    
    /// - Id: The UUID for this object.
    public var Id: String?
    /// - StartAt: RFC 3339; shifted to the location timezone + offset. Precision up to the minute is respected; seconds are truncated.
    /// Min Length 1
//    var StartAt: Date?
    @FormattedDate<RFC3339_Strategy> public var StartAt: Date?
    /// - EndAt: RFC 3339; shifted to the timezone + offset. Precision up to the minute is respected; seconds are truncated.
//    var EndAt: Date?
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
    
//    required public init(from decoder: Decoder) throws {
//
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .StartAt), !dateString.isEmpty {
//            self.StartAt = try dateString.decode_RFC3339_Date(container, forKey: .StartAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .EndAt), !dateString.isEmpty {
//            self.EndAt = try dateString.decode_RFC3339_Date(container, forKey: .EndAt)
//        }
//        self.BreakTypeId = try container.decodeIfPresent(String.self, forKey: .BreakTypeId)
//        self.Name = try container.decodeIfPresent(String.self, forKey: .Name)
//        self.ExpectedDuration = try container.decodeIfPresent(String.self, forKey: .ExpectedDuration)
//        self.IsPaid = try container.decodeIfPresent(Bool.self, forKey: .IsPaid)
//    }
}
