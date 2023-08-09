//
//  RetrieveDisputeResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.07.23.
//

import Foundation

open class RetrieveDisputeResponse: SquareupResponse {
    
    /// - dispute: Details about the requested Dispute.
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
