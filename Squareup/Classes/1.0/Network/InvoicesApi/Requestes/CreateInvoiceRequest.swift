//
//  CreateInvoiceRequest.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

open class CreateInvoiceRequest: Codable {
    
    /// - invoice: The invoice to create.
    public var invoice: Invoice?
    /// - IdempotencyKey: A unique string that identifies the CreateInvoice request. If you do not provide idempotency_key (or provide an empty string as the value), the endpoint treats each request as independent.
    /// For more information, see Idempotency.
    /// Max Length 128
    public var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case invoice = "invoice"
        case IdempotencyKey = "idempotency_key"
    }
}
