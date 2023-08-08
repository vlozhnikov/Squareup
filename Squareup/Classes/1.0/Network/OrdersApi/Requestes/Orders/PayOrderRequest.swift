//
//  PayOrderRequest.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

open class PayOrderRequest: Codable {
    
    /// - IdempotencyKey: A value you specify that uniquely identifies this request among requests you have sent. If you are unsure whether a particular payment request was completed successfully, you can reattempt it with the same idempotency key without worrying about duplicate payments.
    /// For more information, see Idempotency.
    /// Min Length 1
    /// Max Length 192
    public var IdempotencyKey: String?
    /// - OrderVersion: The version of the order being paid. If not supplied, the latest version will be paid.
    public var OrderVersion: Int?
    /// - PaymentIds: The IDs of the payments to collect. The payment total must match the order total.
    public var PaymentIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case OrderVersion = "order_version"
        case PaymentIds = "payment_ids"
    }
}
