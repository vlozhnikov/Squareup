//
//  ListDisputeEvidenceRequest.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class ListDisputeEvidenceRequest: Codable {
    
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
    }
}
