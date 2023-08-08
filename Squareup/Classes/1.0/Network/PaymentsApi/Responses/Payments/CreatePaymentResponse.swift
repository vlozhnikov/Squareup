//
//  CreatePaymentResponse.swift
//  Squareup
//
//  Created by user on 15.06.23.
//

import Foundation

open class CreatePaymentResponse: SquareupResponse {
    
    /// - payment: The newly created payment.
    var payment: Payment?
    
    enum CodingKeys: String, CodingKey {
        case payment = "payment"
    }
}
