//
//  SearchTeamMembersQuery.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 6.06.23.
//

import Foundation

/// - SearchTeamMembersQuery:  Represents the parameters in a search for TeamMember objects.
/// https://developer.squareup.com/reference/square/objects/SearchTeamMembersQuery
open class SearchTeamMembersQuery: Codable {
    
    /// - Filter: The options to filter by. 
    public var Filter: SearchTeamMembersFilter?
    
    enum CodingKeys: String, CodingKey {
        case Filter = "filter"
    }
}
