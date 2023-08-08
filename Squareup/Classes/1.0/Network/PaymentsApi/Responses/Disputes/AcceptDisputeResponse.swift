//
//  AcceptDisputeResponse.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class AcceptDisputeResponse: SquareupResponse {
    
    /// - dispute: Details about the accepted dispute.
    var dispute: Dispute?
    
    enum CodingKeys: String, CodingKey {
        case dispute = "dispute"
    }
}
