//
//  UpdateTeamMemberRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 6.06.23.
//

import Foundation

open class UpdateTeamMemberRequest: Codable {
    
    /// - TeamMember: The data used to update the TeamMember object.
    public var teamMember: TeamMember?
    
    enum CodingKeys: String, CodingKey {
        case teamMember = "team_member"
    }
}
