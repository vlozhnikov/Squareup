//
//  BulkUpdateTeamMembersResponse.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

open class BulkUpdateTeamMembersResponse: SquareupResponse {
    
    var TeamMembers: [String: CreateTeamMemberRequest]?
    
    enum CodingKeys: String, CodingKey {
        case TeamMembers = "team_members"
    }
}
