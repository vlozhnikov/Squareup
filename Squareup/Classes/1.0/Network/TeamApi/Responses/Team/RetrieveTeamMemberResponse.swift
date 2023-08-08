//
//  RetrieveTeamMemberResponse.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

open class RetrieveTeamMemberResponse: SquareupResponse {
    
    var TeamMember: TeamMember?
    
    enum CodingKeys: String, CodingKey {
        case TeamMember = "team_member"
    }
}
