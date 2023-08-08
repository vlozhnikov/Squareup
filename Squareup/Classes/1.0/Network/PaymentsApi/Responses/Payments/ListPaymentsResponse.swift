//
//  ListPaymentsResponse.swift
//  Squareup
//
//  Created by user on 15.06.23.
//

import Foundation

open class ListPaymentsResponse: SquareupResponse {
    
    /// - Payments: he requested list of payments.
    var Payments: [Payment]?
    /// - Cursor: The pagination cursor to be used in a subsequent request. If empty, this is the final response.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Payments = "payments"
        case Cursor = "cursor"
    }
}
