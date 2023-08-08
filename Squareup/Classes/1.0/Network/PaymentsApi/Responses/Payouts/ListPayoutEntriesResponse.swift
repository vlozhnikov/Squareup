//
//  ListPayoutEntriesResponse.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class ListPayoutEntriesResponse: SquareupResponse {
    
    /// - PayoutEntries: The requested list of payout entries, ordered with the given or default sort order.
    public var PayoutEntries: [PayoutEntry]?
    /// - Cursor: The pagination cursor to be used in a subsequent request. If empty, this is the final response. For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case PayoutEntries = "payout_entries"
        case Cursor = "cursor"
    }
}
