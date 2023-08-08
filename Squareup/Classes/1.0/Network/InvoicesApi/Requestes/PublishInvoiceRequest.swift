//
//  PublishInvoiceRequest.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

open class PublishInvoiceRequest: Codable {
    
    /// - Version: The version of the invoice to publish. This must match the current version of the invoice; otherwise, the request is rejected.
    public var Version: Int?
    /// - IdempotencyKey: A unique string that identifies the PublishInvoice request. If you do not provide idempotency_key (or provide an empty string as the value), the endpoint treats each request as independent.
    /// For more information, see Idempotency.
    /// Max Length 128
    public var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case Version = "version"
        case IdempotencyKey = "idempotency_key"
    }
}
