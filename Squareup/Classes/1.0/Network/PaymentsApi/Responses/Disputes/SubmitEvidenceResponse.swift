//
//  SubmitEvidenceResponse.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class SubmitEvidenceResponse: SquareupResponse {
    
    /// - Dispute: The Dispute for which evidence was submitted.
    var dispute: Dispute?
    
    enum CodingKeys: String, CodingKey {
        case dispute = "dispute"
    }
}
