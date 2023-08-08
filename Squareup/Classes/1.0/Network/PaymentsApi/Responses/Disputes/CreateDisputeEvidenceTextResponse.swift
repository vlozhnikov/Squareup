//
//  CreateDisputeEvidenceTextResponse.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class CreateDisputeEvidenceTextResponse: SquareupResponse {
    
    /// - Evidence: The newly uploaded dispute evidence metadata.
    var Evidence: DisputeEvidence?
    
    enum CodingKeys: String, CodingKey {
        case Evidence = "evidence"
    }
}
