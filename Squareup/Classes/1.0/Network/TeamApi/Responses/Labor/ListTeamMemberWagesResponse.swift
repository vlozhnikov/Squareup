//
//  ListTeamMemberWagesResponse.swift
//  Squareup
//
//  Created by user on 4.08.23.
//

import Foundation

open class ListTeamMemberWagesResponse: SquareupResponse {
    
    /// - TeamMemberWages: A page of TeamMemberWage results.
    public var TeamMemberWages: [TeamMemberWage]?
    /// - Cursor: The value supplied in the subsequent request to fetch the next page of TeamMemberWage results.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case TeamMemberWages = "team_member_wages"
        case Cursor = "cursor"
    }
}
