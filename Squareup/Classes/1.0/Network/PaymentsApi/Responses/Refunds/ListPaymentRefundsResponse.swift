//
//  ListPaymentRefundsResponse.swift
//  Squareup
//
//  Created by user on 2.07.23.
//

import Foundation

open class ListPaymentRefundsResponse: SquareupResponse {
    
    /// - Refunds: The list of requested refunds.
    var Refunds: [PaymentRefund]?
    /// - Cursor: The pagination cursor to be used in a subsequent request. If empty, this is the final response.
    /// For more information, see Pagination.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Refunds = "refunds"
        case Cursor = "cursor"
    }
}
