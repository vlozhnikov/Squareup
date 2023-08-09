//
//  RetrieveDisputeEvidenceResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.07.23.
//

import Foundation

open class RetrieveDisputeEvidenceResponse: SquareupResponse {
    
    /// - Evidence: Metadata about the dispute evidence file.
    public var Evidence: DisputeEvidence?
    
    enum CodingKeys: String, CodingKey {
        case Evidence = "evidence"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Evidence = try container.decodeIfPresent(DisputeEvidence.self, forKey: .Evidence)
    }
}
