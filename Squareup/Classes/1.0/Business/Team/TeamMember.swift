//
//  TeamMember.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

/// - TeamMember: A record representing an individual team member for a business.
/// https://developer.squareup.com/reference/square/objects/TeamMember
open class TeamMember: Codable {
    
    /// - Id: Read only The unique ID for the team member.
    var Id: String?
    /// - ReferenceId: A second ID used to associate the team member with an entity in another system.
    var ReferenceId: String?
    /// - IsOwner: Read only Whether the team member is the owner of the Square account.
    var IsOwner: Bool?
    /// - Status: Describes the status of the team member.
    var Status: TeamMemberStatus?
    /// - GivenName: The given name (that is, the first name) associated with the team member.
    var GivenName: String?
    /// - FamilyName: The family name (that is, the last name) associated with the team member.
    var FamilyName: String?
    /// - EmailAddress: The email address associated with the team member.
    var EmailAddress: String?
    /// - PhoneNumber: The team member's phone number, in E.164 format. For example: +14155552671 - the country code is 1 for US +551155256325 - the country code is 55 for BR
    var PhoneNumber: String?
    /// - CreatedAt: Read only The timestamp, in RFC 3339 format, describing when the team member was created. For example, "2018-10-04T04:00:00-07:00" or "2019-02-05T12:00:00Z".
    ///
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var CreatedAt: Date?
    /// - UpdatedAt: Read only The timestamp, in RFC 3339 format, describing when the team member was last updated. For example, "2018-10-04T04:00:00-07:00" or "2019-02-05T12:00:00Z".
    ///
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var UpdatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var UpdatedAt: Date?
    /// - AssignedLocations: Describes the team member's assigned locations.
    var AssignedLocations: TeamMemberAssignedLocations?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case ReferenceId = "reference_id"
        case IsOwner = "is_owner"
        case Status = "status"
        case GivenName = "given_name"
        case FamilyName = "family_name"
        case EmailAddress = "email_address"
        case PhoneNumber = "phone_number"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
        case AssignedLocations = "assigned_locations"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.ReferenceId = try container.decodeIfPresent(String.self, forKey: .ReferenceId)
//        self.IsOwner = try container.decodeIfPresent(Bool.self, forKey: .IsOwner)
//        self.Status = try container.decodeIfPresent(TeamMemberStatus.self, forKey: .Status)
//        self.GivenName = try container.decodeIfPresent(String.self, forKey: .GivenName)
//        self.FamilyName = try container.decodeIfPresent(String.self, forKey: .FamilyName)
//        self.EmailAddress = try container.decodeIfPresent(String.self, forKey: .EmailAddress)
//        self.PhoneNumber = try container.decodeIfPresent(String.self, forKey: .PhoneNumber)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//            self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//        }
//        self.AssignedLocations = try container.decodeIfPresent(TeamMemberAssignedLocations.self, forKey: .AssignedLocations)
//    }
}
