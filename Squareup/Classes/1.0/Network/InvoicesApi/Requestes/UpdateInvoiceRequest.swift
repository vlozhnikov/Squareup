//
//  UpdateInvoiceRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 17.06.23.
//

import Foundation

open class UpdateInvoiceRequest: Codable {
    
    /// - invoice: The invoice fields to update. The current invoice version must be specified in the version field. For more information, see Update an Invoice.
    public var invoice: Invoice?
    /// - IdempotencyKey: A unique string that identifies the UpdateInvoice request. If you do not provide idempotency_key (or provide an empty string as the value), the endpoint treats each request as independent.
    public var IdempotencyKey: String?
    /// - FieldsToClear: The list of fields to clear. For examples, see Update an Invoice.
    public var FieldsToClear: [String]?
    
    enum CodingKeys: String, CodingKey {
        case invoice = "invoice"
        case IdempotencyKey = "idempotency_key"
        case FieldsToClear = "fields_to_clear"
    }
}
