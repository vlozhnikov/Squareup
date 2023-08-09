//
//  ListDisputeEvidenceResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.07.23.
//

import Foundation

open class ListDisputeEvidenceResponse: SquareupResponse {
    
    /// - Evidence: The list of evidence previously uploaded to the specified dispute.
    public var Evidences: [DisputeEvidence]?
    /// - Cursor: The pagination cursor to be used in a subsequent request. If unset, this is the final response. For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Evidences = "evidence"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Evidences = try container.decodeIfPresent([DisputeEvidence].self, forKey: .Evidences)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
