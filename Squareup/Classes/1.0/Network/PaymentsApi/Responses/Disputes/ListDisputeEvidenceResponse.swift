//
//  ListDisputeEvidenceResponse.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class ListDisputeEvidenceResponse: SquareupResponse {
    
    /// - Evidence: The list of evidence previously uploaded to the specified dispute.
    public var Evidence: DisputeEvidence?
    /// - Cursor: The pagination cursor to be used in a subsequent request. If unset, this is the final response. For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Evidence = "evidence"
        case Cursor = "cursor"
    }
}
