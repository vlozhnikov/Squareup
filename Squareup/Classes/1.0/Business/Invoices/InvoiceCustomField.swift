//
//  InvoiceCustomField.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

/// - InvoiceCustomField: An additional seller-defined and customer-facing field to include on the invoice.
/// For more information, see Custom fields.
/// Adding custom fields to an invoice requires an Invoices Plus subscription.
/// https://developer.squareup.com/reference/square/objects/InvoiceCustomField
open class InvoiceCustomField: Codable {
    
    /// - Label: The label or title of the custom field. This field is required for a custom field.
    /// Max Length 30
    var Label: String?
    /// - Value: The text of the custom field. If omitted, only the label is rendered.
    /// Max Length 2000
    var Value: String?
    /// - Placement: The location of the custom field on the invoice. This field is required for a custom field.
    var Placement: InvoiceCustomFieldPlacement?
    
    enum CodingKeys: String, CodingKey {
        case Label = "label"
        case Value = "value"
        case Placement = "placement"
    }
}
