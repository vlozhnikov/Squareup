//
//  RetrieveDisputeEvidenceResponse.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class RetrieveDisputeEvidenceResponse: SquareupResponse {
    
    /// - Evidence: Metadata about the dispute evidence file.
    public var Evidence: DisputeEvidence?
    
    enum CodingKeys: String, CodingKey {
        case Evidence = "evidence"
    }
}
