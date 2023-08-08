//
//  ListPayoutsResponse.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class ListPayoutsResponse: SquareupResponse {
    
    /// - Payouts: The requested list of payouts.
    var Payouts: [Payout]?
    /// - Cursor: The pagination cursor to be used in a subsequent request. If empty, this is the final response. For more information, see Pagination.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Payouts = "payouts"
        case Cursor = "cursor"
    }
}
