//
//  ListTeamMemberWagesRequest.swift
//  Squareup
//
//  Created by user on 4.08.23.
//

import Foundation

internal class ListTeamMemberWagesRequest: Codable {
    
    /// - TeamMemberId: Filter the returned wages to only those that are associated with the specified team member.
    var TeamMemberId: String?
    /// - Limit: The maximum number of TeamMemberWage results to return per page. The number can range between 1 and 200. The default is 200.
    var Limit: Int?
    /// - Cursor: A pointer to the next page of EmployeeWage results to fetch.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case TeamMemberId = "team_member_id"
        case Limit = "limit"
        case Cursor = "cursor"
    }
}
