//
//  SearchTeamMembersFilter.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

/// - SearchTeamMembersFilter: Represents a filter used in a search for TeamMember objects.
/// AND logic is applied between the individual fields, and OR logic is applied within list-based fields. For example, setting this filter value:
///
/// filter = (locations_ids = ["A", "B"], status = ACTIVE)
///
/// returns only active team members assigned to either location "A" or "B".
/// https://developer.squareup.com/reference/square/objects/SearchTeamMembersFilter
open class SearchTeamMembersFilter: Codable {
    
    /// - LocationIds: When present, filters by team members assigned to the specified locations. When empty, includes team members assigned to any location.
    public var LocationIds: [String]?
    /// - Status: When present, filters by team members who match the given status. When empty, includes team members of all statuses.
    public var Status: TeamMemberStatus?
    /// - IsOwner: When present and set to true, returns the team member who is the owner of the Square account.
    public var IsOwner: Bool?
    
    enum CodingKeys: String, CodingKey {
        case LocationIds = "location_ids"
        case Status = "status"
        case IsOwner = "is_owner"
    }
}
