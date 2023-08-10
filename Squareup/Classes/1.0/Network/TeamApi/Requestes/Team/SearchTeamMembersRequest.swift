//
//  SearchTeamMembersRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 6.06.23.
//

import Foundation

open class SearchTeamMembersRequest: Codable {
    
    /// - Query: The query parameters.
    public var Query: SearchTeamMembersQuery?
    /// - Limit: The maximum number of TeamMember objects in a page (100 by default).
    /// Min 1
    /// Max 200
    public var Limit: Int?
    /// - Cursor: The opaque cursor for fetching the next page. For more information, see pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Query = "query"
        case Limit = "limit"
        case Cursor = "cursor"
    }
}
