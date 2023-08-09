//
//  GetPaymentRefundResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.07.23.
//

import Foundation

open class GetPaymentRefundResponse: SquareupResponse {
    
    /// - Refund: The requested PaymentRefund.
    public var Refund: PaymentRefund?
    
    enum CodingKeys: String, CodingKey {
        case Refund = "refund"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Refund = try container.decodeIfPresent(PaymentRefund.self, forKey: .Refund)
    }
}
