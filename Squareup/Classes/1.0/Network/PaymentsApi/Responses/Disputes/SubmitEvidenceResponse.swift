//
//  SubmitEvidenceResponse.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class SubmitEvidenceResponse: SquareupResponse {
    
    /// - Dispute: The Dispute for which evidence was submitted.
    public var dispute: Dispute?
    
    enum CodingKeys: String, CodingKey {
        case dispute = "dispute"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.dispute = try container.decodeIfPresent(Dispute.self, forKey: .dispute)
    }
}
