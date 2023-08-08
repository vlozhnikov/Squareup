//
//  BreakType.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - BreakType: A defined break template that sets an expectation for possible Break instances on a Shift.
/// https://developer.squareup.com/reference/square/objects/BreakType
open class BreakType: Codable {
    
    /// - Id: The UUID for this object.
    /// Max Length 255
    var Id: String?
    /// - LocationId: The ID of the business location this type of break applies to.
    /// Min Length 1
    var LocationId: String?
    /// - BreakName: A human-readable name for this type of break. The name is displayed to employees in Square products.
    /// Min Length 1
    var BreakName: String?
    /// - ExpectedDuration: Format: RFC-3339 P[n]Y[n]M[n]DT[n]H[n]M[n]S. The expected length of this break. Precision less than minutes is truncated.
    /// Example for break expected duration of 15 minutes: T15M
    /// Min Length 1
    var ExpectedDuration: String?
    /// - IsPaid: Whether this break counts towards time worked for compensation purposes.
    var IsPaid: Bool?
    /// - Version: Used for resolving concurrency issues. The request fails if the version provided does not match the server version at the time of the request. If a value is not provided, Square's servers execute a "blind" write; potentially overwriting another writer's data.
    var Version: Int?
    /// - CreatedAt: Read only A read-only timestamp in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var CreatedAt: Date?
    /// - UpdatedAt: Read only A read-only timestamp in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var UpdatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var UpdatedAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case LocationId = "location_id"
        case BreakName = "break_name"
        case ExpectedDuration = "expected_duration"
        case IsPaid = "is_paid"
        case Version = "version"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.LocationId = try container.decodeIfPresent(String.self, forKey: .LocationId)
//        self.BreakName = try container.decodeIfPresent(String.self, forKey: .BreakName)
//        self.ExpectedDuration = try container.decodeIfPresent(String.self, forKey: .ExpectedDuration)
//        self.IsPaid = try container.decodeIfPresent(Bool.self, forKey: .IsPaid)
//        self.Version = try container.decodeIfPresent(Int.self, forKey: .Version)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//            self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//        }
//    }
}
