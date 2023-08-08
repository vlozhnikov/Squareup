//
//  GetPaymentResponse.swift
//  Squareup
//
//  Created by user on 15.06.23.
//

import Foundation

open class GetPaymentResponse: SquareupResponse {
    
    /// - payment: The requested Payment.
    public var payment: Payment?
    
    enum CodingKeys: String, CodingKey {
        case payment = "payment"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.payment = try container.decodeIfPresent(Payment.self, forKey: .payment)
    }
}
