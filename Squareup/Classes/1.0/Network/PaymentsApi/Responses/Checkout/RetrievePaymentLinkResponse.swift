//
//  RetrievePaymentLinkResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.07.23.
//

import Foundation

open class RetrievePaymentLinkResponse: SquareupResponse {
    
    /// - paymentLink: The payment link that is retrieved.
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
