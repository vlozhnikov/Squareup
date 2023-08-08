//
//  CreateDisputeEvidenceFileResponse.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class CreateDisputeEvidenceFileResponse: SquareupResponse {
    
    /// - Evidence: The metadata of the newly uploaded dispute evidence.
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
