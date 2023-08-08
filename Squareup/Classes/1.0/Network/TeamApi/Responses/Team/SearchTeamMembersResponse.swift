//
//  SearchTeamMembersResponse.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

open class SearchTeamMembersResponse: SquareupResponse {
    
    var TeamMembers: [TeamMember]?
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case TeamMembers = "team_members"
        case Cursor = "cursor"
    }
}
