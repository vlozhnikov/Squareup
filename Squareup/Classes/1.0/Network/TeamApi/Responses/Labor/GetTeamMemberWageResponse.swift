//
//  GetTeamMemberWageResponse.swift
//  Squareup
//
//  Created by user on 4.08.23.
//

import Foundation

open class GetTeamMemberWageResponse: SquareupResponse {
    
    /// - teamMemberWage: The requested TeamMemberWage object.
    public var teamMemberWage: TeamMemberWage?
    
    enum CodingKeys: String, CodingKey {
        case teamMemberWage = "team_member_wage"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.teamMemberWage = try container.decodeIfPresent(TeamMemberWage.self, forKey: .teamMemberWage)
    }
}
