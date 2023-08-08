//
//  BulkUpdateTeamMembersResponse.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

open class BulkUpdateTeamMembersResponse: SquareupResponse {
    
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
