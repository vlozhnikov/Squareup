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
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.invoice = try container.decodeIfPresent(Invoice.self, forKey: .invoice)
    }
}
