//
//  TeamMemberAssignedLocations.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

/// - TeamMemberAssignedLocations: An object that represents a team member's assignment to locations.
/// https://developer.squareup.com/reference/square/objects/TeamMemberAssignedLocations
open class TeamMemberAssignedLocations: Codable {
    
    /// - AssignmentType: The current assignment type of the team member.
    public var AssignmentType: String?
    /// - LocationIds: The explicit locations that the team member is assigned to.
    public var LocationIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case AssignmentType = "assignment_type"
        case LocationIds = "location_ids"
    }
}
