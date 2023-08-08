//
//  CancelInvoiceResponse.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

open class CancelInvoiceResponse: SquareupResponse {
    
    /// - invoice: The canceled invoice
    var invoice: Invoice?
    
    enum CodingKeys: String, CodingKey {
        case invoice = "invoice"
    }
}
