//
//  CreateTeamMemberRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 6.06.23.
//

import Foundation

open class CreateTeamMemberRequest: Codable {
    
    /// - IdempotencyKey: A unique string that identifies this CreateTeamMember request. Keys can be any valid string, but must be unique for every request. For more information, see Idempotency.
    /// The minimum length is 1 and the maximum length is 45.
    public var IdempotencyKey: String?
    /// - teamMember: Required The data used to create the TeamMember object.
    public var teamMember: TeamMember?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case teamMember = "team_member"
    }
}
