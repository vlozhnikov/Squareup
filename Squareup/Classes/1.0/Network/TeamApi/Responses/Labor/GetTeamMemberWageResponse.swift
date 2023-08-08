//
//  GetTeamMemberWageResponse.swift
//  Squareup
//
//  Created by user on 4.08.23.
//

import Foundation

open class GetTeamMemberWageResponse: SquareupResponse {
    
    /// - teamMemberWage: The requested TeamMemberWage object.
    var teamMemberWage: TeamMemberWage?
    
    enum CodingKeys: String, CodingKey {
        case teamMemberWage = "team_member_wage"
    }
}
