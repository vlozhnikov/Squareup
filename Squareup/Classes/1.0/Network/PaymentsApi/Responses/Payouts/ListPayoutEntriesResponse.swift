//
//  ListPayoutEntriesResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.07.23.
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
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.PayoutEntries = try container.decodeIfPresent([PayoutEntry].self, forKey: .PayoutEntries)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
