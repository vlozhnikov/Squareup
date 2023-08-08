//
//  DeletePaymentLinkResponse.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class DeletePaymentLinkResponse: SquareupResponse {
    
    /// - Id: The ID of the link that is deleted.
    var Id: String?
    /// - CancelledOrderId: The ID of the order that is canceled. When a payment link is deleted, Square updates the the state (of the order that the checkout link created) to CANCELED.
    var CancelledOrderId: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case CancelledOrderId = "cancelled_order_id"
    }
}
