//
//  BulkUpdateTeamMembersRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 6.06.23.
//

import Foundation

open class BulkUpdateTeamMembersRequest: Codable {
    
    /// - TeamMembers: The data used to update the TeamMember objects. Each key is the team_member_id that maps to the UpdateTeamMemberRequest. The maximum number of update objects is 25.
    public var TeamMembers: [String: CreateTeamMemberRequest]?
    
    enum CodingKeys: String, CodingKey {
        case TeamMembers = "team_members"
    }
}
