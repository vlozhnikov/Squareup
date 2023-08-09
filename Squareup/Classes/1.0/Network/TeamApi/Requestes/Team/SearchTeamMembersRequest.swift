//
//  SearchTeamMembersRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 6.06.23.
//

import Foundation

open class SearchTeamMembersRequest: Codable {
    
    public var Query: SearchTeamMembersQuery?
    public var Limit: Int?
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Query = "query"
        case Limit = "limit"
        case Cursor = "cursor"
    }
}
