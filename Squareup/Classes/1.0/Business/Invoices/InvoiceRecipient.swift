//
//  InvoiceRecipient.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

/// - InvoiceRecipient: Represents a snapshot of customer data.
/// This object stores customer data that is displayed on the invoice and that Square uses to deliver the invoice.
/// When you provide a customer ID for a draft invoice, Square retrieves the associated customer profile and populates the remaining InvoiceRecipient fields. You cannot update these fields after the invoice is published. Square updates the customer ID in response to a merge operation, but does not update other fields.
/// https://developer.squareup.com/reference/square/objects/InvoiceRecipient
open class InvoiceRecipient: Codable {
    
    /// - CustomerId: The ID of the customer. This is the customer profile ID that you provide when creating a draft invoice.
    /// Min Length 1
    /// Max Length 255
    var CustomerId: String?
    /// - GivenName: Read only The recipient's given (that is, first) name.
    var GivenName: String?
    /// - FamilyName: Read only The recipient's family (that is, last) name.
    var FamilyName: String?
    /// - EmailAddress: Read only The recipient's email address.
    var EmailAddress: String?
    /// - address: Read only The recipient's physical address.
    var address: Address?
    /// - PhoneNumber: Read only The recipient's phone number.
    var PhoneNumber: String?
    /// - CompanyName: Read only The name of the recipient's company.
    var CompanyName: String?
    /// - TaxIds: Read only The recipient's tax IDs. The country of the seller account determines whether this field is available for the customer. For more information, see Invoice recipient tax IDs.
    var TaxIds: InvoiceRecipientTaxIds?
    
    enum CodingKeys: String, CodingKey {
        case CustomerId = "customer_id"
        case GivenName = "given_name"
        case FamilyName = "family_name"
        case EmailAddress = "email_address"
        case address = "address"
        case PhoneNumber = "phone_number"
        case CompanyName = "company_name"
        case TaxIds = "tax_ids"
    }
}
