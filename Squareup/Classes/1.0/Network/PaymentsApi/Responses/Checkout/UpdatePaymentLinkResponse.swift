//
//  UpdatePaymentLinkResponse.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class UpdatePaymentLinkResponse: SquareupResponse {
    
    /// - paymentLink: The updated payment link.
    public var paymentLink: PaymentLink?
    
    enum CodingKeys: String, CodingKey {
        case paymentLink = "payment_link"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.paymentLink = try container.decodeIfPresent(PaymentLink.self, forKey: .paymentLink)
    }
}
