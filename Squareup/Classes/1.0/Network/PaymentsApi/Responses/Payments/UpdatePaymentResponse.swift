//
//  UpdatePaymentResponse.swift
//  Squareup
//
//  Created by user on 15.06.23.
//

import Foundation

open class UpdatePaymentResponse: SquareupResponse {
    
    /// - payment: The updated payment.
    var payment: Payment?
    
    enum CodingKeys: String, CodingKey {
        case payment = "payment"
    }
}
