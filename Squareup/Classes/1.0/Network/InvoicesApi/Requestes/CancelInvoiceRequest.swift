//
//  CancelInvoiceRequest.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

internal class CancelInvoiceRequest: Codable {
    
    /// - Version: The version of the invoice to cancel. If you do not know the version, you can call GetInvoice or ListInvoices.
    var Version: Int?
    
    enum CodingKeys: String, CodingKey {
        case Version = "version"
    }
}