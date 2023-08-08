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
}
