//
//  CancelPaymentRequest.swift
//  Squareup
//
//  Created by user on 15.06.23.
//

import Foundation

internal class CancelPaymentRequest: Codable {
    
    /// - IdempotencyKey: The idempotency_key identifying the payment to be canceled.
    /// Min Length 1
    /// Max Length 45
    var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
    }
}
