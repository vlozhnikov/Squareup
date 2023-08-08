//
//  DeleteInvoiceRequest.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

open class DeleteInvoiceRequest: Codable {
    
    /// - Version: The version of the invoice to delete. If you do not know the version, you can call GetInvoice or ListInvoices.
    public var Version: Int?
    
    enum CodingKeys: String, CodingKey {
        case Version = "version"
    }
}
