//
//  UpdateTeamMemberResponse.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

open class UpdateTeamMemberResponse: SquareupResponse {
    
    public var teamMember: TeamMember?
    
    enum CodingKeys: String, CodingKey {
        case teamMember = "team_member"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.teamMember = try container.decodeIfPresent(TeamMember.self, forKey: .teamMember)
    }
}
