//
//  CompletePaymentResponse.swift
//  Squareup
//
//  Created by user on 15.06.23.
//

import Foundation

open class CompletePaymentResponse: SquareupResponse {
    
    /// - payment: The successfully completed payment.
    var payment: Payment?
    
    enum CodingKeys: String, CodingKey {
        case payment = "payment"
    }
}
