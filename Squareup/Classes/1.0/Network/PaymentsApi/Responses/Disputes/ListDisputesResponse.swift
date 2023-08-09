//
//  ListDisputesResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.07.23.
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
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Disputes = try container.decodeIfPresent([Dispute].self, forKey: .Disputes)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
