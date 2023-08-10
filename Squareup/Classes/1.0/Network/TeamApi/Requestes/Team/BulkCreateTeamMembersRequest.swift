//
//  BulkCreateTeamMembersRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 6.06.23.
//

import Foundation

open class BulkCreateTeamMembersRequest: Codable {
    
    /// - TeamMembers: The data used to create the TeamMember objects. Each key is the idempotency_key that maps to the CreateTeamMemberRequest. The maximum number of create objects is 25.
    public var TeamMembers: [String: CreateTeamMemberRequest]?
    
    enum CodingKeys: String, CodingKey {
        case TeamMembers = "team_members"
    }
}
