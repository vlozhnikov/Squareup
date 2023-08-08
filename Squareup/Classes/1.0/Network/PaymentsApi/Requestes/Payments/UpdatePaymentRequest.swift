//
//  UpdatePaymentRequest.swift
//  Squareup
//
//  Created by user on 15.06.23.
//

import Foundation

internal class UpdatePaymentRequest: Codable {
    
    /// - payment: The updated Payment object.
    var payment: Payment?
    /// - IdempotencyKey: A unique string that identifies this UpdatePayment request. Keys can be any valid string but must be unique for every UpdatePayment request.
    /// For more information, see Idempotency.
    /// Min Length 1
    /// Max Length 45
    var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case payment = "payment"
        case IdempotencyKey = "idempotency_key"
    }
}
