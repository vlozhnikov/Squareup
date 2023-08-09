//
//  CustomerTaxIds.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 8.06.23.
//

import Foundation

/// - CustomerTaxIds: Represents the tax ID associated with a customer profile.
/// The corresponding tax_ids field is available only for customers of sellers in EU countries or the United Kingdom. For more information, see Customer tax IDs.
/// https://developer.squareup.com/reference/square/objects/CustomerTaxIds
open class CustomerTaxIds: Codable {
    
    /// - EuVat: The EU VAT identification number for the customer. For example, IE3426675K. The ID can contain alphanumeric characters only.
    /// Max Length 20
    public var EuVat: String?
    
    enum CodingKeys: String, CodingKey {
        case EuVat = "eu_vat"
    }
}
