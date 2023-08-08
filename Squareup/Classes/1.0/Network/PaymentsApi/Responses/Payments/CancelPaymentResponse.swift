//
//  CancelPaymentResponse.swift
//  Squareup
//
//  Created by user on 15.06.23.
//

import Foundation

open class CancelPaymentResponse: SquareupResponse {
    
    /// - payment: The successfully canceled Payment object.
    var payment: Payment?
    
    enum CodingKeys: String, CodingKey {
        case payment = "payment"
    }
}
