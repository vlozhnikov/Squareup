//
//  UpdateInvoiceResponse.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

open class UpdateInvoiceResponse: SquareupResponse {
    
    /// - invoice: The updated invoice.
    public var invoice: Invoice?
    
    enum CodingKeys: String, CodingKey {
        case invoice = "invoice"
    }
}
