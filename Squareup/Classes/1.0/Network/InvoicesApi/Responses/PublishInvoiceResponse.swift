//
//  PublishInvoiceResponse.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

open class PublishInvoiceResponse: SquareupResponse {
    
    /// - invoice: The published invoice.
    public var invoice: Invoice?
    
    enum CodingKeys: String, CodingKey {
        case invoice = "invoice"
    }
}
