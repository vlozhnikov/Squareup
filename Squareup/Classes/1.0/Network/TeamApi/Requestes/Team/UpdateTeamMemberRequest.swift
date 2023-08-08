//
//  UpdateTeamMemberRequest.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

internal class UpdateTeamMemberRequest: Codable {
    
    var TeamMember: TeamMember?
    
    enum CodingKeys: String, CodingKey {
        case TeamMember = "team_member"
    }
}
