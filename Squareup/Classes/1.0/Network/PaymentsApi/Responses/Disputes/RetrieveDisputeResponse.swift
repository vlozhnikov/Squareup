//
//  RetrieveDisputeResponse.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class RetrieveDisputeResponse: SquareupResponse {
    
    /// - dispute: Details about the requested Dispute.
    var dispute: Dispute?
    
    enum CodingKeys: String, CodingKey {
        case dispute = "dispute"
    }
}
