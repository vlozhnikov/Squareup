//
//  ListPaymentLinksResponse.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class ListPaymentLinksResponse: SquareupResponse {
    
    /// - PaymentLinks: The list of payment links.
    var PaymentLinks: [PaymentLink]?
    /// - Cursor: When a response is truncated, it includes a cursor that you can use in a subsequent request to retrieve the next set of gift cards. If a cursor is not present, this is the final response. For more information, see Pagination.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case PaymentLinks = "payment_links"
        case Cursor = "cursor"
    }
}
