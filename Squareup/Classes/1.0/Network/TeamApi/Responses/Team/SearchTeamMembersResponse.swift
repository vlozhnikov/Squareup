//
//  SearchTeamMembersResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 6.06.23.
//

import Foundation

open class SearchTeamMembersResponse: SquareupResponse {
    
    public var TeamMembers: [TeamMember]?
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case TeamMembers = "team_members"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.TeamMembers = try container.decodeIfPresent([TeamMember].self, forKey: .TeamMembers)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
