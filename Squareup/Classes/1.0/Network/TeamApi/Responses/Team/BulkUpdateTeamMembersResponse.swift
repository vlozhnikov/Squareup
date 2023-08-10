//
//  BulkUpdateTeamMembersResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 6.06.23.
//

import Foundation

open class BulkUpdateTeamMembersResponse: SquareupResponse {
    
    /// - TeamMembers: The successfully updated TeamMember objects. Each key is the team_member_id that maps to the UpdateTeamMemberRequest.
    public var TeamMembers: [String: CreateTeamMemberRequest]?
    
    enum CodingKeys: String, CodingKey {
        case TeamMembers = "team_members"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.TeamMembers = try container.decodeIfPresent([String: CreateTeamMemberRequest].self, forKey: .TeamMembers)
    }
}
