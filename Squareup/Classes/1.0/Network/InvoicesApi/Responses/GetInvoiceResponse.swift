//
//  GetInvoiceResponse.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

open class GetInvoiceResponse: SquareupResponse {
    
    /// - invoice: The invoice requested.
    var invoice: Invoice?
    
    enum CodingKeys: String, CodingKey {
        case invoice = "invoice"
    }
}
