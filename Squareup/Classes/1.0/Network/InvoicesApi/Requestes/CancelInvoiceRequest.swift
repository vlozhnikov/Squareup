//
//  CancelInvoiceRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 17.06.23.
//

import Foundation

open class CancelInvoiceRequest: Codable {
    
    /// - Version: The version of the invoice to cancel. If you do not know the version, you can call GetInvoice or ListInvoices.
    public var Version: Int?
    
    enum CodingKeys: String, CodingKey {
        case Version = "version"
    }
}
