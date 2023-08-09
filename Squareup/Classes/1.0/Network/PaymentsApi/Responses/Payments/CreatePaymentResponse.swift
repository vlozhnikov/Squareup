//
//  CreatePaymentResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 15.06.23.
//

import Foundation

open class CreatePaymentResponse: SquareupResponse {
    
    /// - payment: The newly created payment.
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
