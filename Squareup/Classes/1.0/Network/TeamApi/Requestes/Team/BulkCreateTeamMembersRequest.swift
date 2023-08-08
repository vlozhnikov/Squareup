//
//  BulkCreateTeamMembersRequest.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

internal class BulkCreateTeamMembersRequest: Codable {
    
    var TeamMembers: [String: CreateTeamMemberRequest]?
    
    enum CodingKeys: String, CodingKey {
        case TeamMembers = "team_members"
    }
}
