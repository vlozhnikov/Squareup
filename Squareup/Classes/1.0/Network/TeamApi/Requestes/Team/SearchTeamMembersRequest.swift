//
//  SearchTeamMembersRequest.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

internal class SearchTeamMembersRequest: Codable {
    
    var Query: SearchTeamMembersQuery?
    var Limit: Int?
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Query = "query"
        case Limit = "limit"
        case Cursor = "cursor"
    }
}
