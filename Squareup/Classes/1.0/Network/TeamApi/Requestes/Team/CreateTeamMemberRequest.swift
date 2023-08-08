//
//  CreateTeamMemberRequest.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

internal class CreateTeamMemberRequest: Codable {
    
    var IdempotencyKey: String?
    var TeamMember: TeamMember?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case TeamMember = "team_member"
    }
}
