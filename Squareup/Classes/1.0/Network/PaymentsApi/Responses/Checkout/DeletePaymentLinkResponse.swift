//
//  DeletePaymentLinkResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.07.23.
//

import Foundation

open class DeletePaymentLinkResponse: SquareupResponse {
    
    /// - Id: The ID of the link that is deleted.
    public var Id: String?
    /// - CancelledOrderId: The ID of the order that is canceled. When a payment link is deleted, Square updates the the state (of the order that the checkout link created) to CANCELED.
    public var CancelledOrderId: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case CancelledOrderId = "cancelled_order_id"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
        self.CancelledOrderId = try container.decodeIfPresent(String.self, forKey: .CancelledOrderId)
    }
}
