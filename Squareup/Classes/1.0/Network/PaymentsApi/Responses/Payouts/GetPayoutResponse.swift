//
//  GetPayoutResponse.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class GetPayoutResponse: SquareupResponse {
    
    /// - payout: The requested payout.
    var payout: Payout?
    
    enum CodingKeys: String, CodingKey {
        case payout = "payout"
    }
}
