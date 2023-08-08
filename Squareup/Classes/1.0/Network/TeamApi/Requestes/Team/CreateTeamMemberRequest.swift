//
//  CreateTeamMemberRequest.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

open class CreateTeamMemberRequest: Codable {
    
    public var IdempotencyKey: String?
    public var TeamMember: TeamMember?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case TeamMember = "team_member"
    }
}
