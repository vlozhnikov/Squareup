//
//  InvoiceRecipientTaxIds.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

/// - InvoiceRecipientTaxIds: Represents the tax IDs for an invoice recipient.
/// The country of the seller account determines whether the corresponding tax_ids field is available for the customer. For more information, see Invoice recipient tax IDs.
/// https://developer.squareup.com/reference/square/objects/InvoiceRecipientTaxIds
open class InvoiceRecipientTaxIds: Codable {
    
    /// - EuVat: Read only The EU VAT identification number for the invoice recipient. For example, IE3426675K.
    var EuVat: String?
    
    enum CodingKeys: String, CodingKey {
        case EuVat = "eu_vat"
    }
}
