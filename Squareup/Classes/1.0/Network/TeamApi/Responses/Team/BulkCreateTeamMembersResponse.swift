//
//  BulkCreateTeamMembersResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 6.06.23.
//

import Foundation

open class BulkCreateTeamMembersResponse: SquareupResponse {
    
    /// - TeamMembers: The successfully created TeamMember objects. Each key is the idempotency_key that maps to the CreateTeamMemberRequest.
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
