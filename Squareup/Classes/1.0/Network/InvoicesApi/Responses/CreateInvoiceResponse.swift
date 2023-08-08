//
//  CreateInvoiceResponse.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

open class CreateInvoiceResponse: SquareupResponse {
    
    /// - invoice: The newly created invoice.
    var invoice: Invoice?
    
    enum CodingKeys: String, CodingKey {
        case invoice = "invoice"
    }
}
