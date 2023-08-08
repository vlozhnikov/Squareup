//
//  ListDisputesResponse.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class ListDisputesResponse: SquareupResponse {
    
    /// - Disputes: The list of disputes.
    public var Disputes: [Dispute]?
    /// - Cursor: The pagination cursor to be used in a subsequent request. If unset, this is the final response. For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Disputes = "disputes"
        case Cursor = "cursor"
    }
}
