//
//  CreateDisputeEvidenceFileResponse.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class CreateDisputeEvidenceFileResponse: SquareupResponse {
    
    /// - Evidence: The metadata of the newly uploaded dispute evidence.
    var Evidence: DisputeEvidence?
    
    enum CodingKeys: String, CodingKey {
        case Evidence = "evidence"
    }
}
