//
//  ApplicationDetails.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 15.06.23.
//

import Foundation

/// - ApplicationDetails: Details about the application that took the payment.
/// https://developer.squareup.com/reference/square/objects/ApplicationDetails
open class ApplicationDetails: Codable {
    
    /// - SquareProduct: The Square product, such as Square Point of Sale (POS), Square Invoices, or Square Virtual Terminal.
    public var SquareProduct: ApplicationDetailsExternalSquareProduct?
    /// - ApplicationId: The Square ID assigned to the application used to take the payment. Application developers can use this information to identify payments that their application processed. For example, if a developer uses a custom application to process payments, this field contains the application ID from the Developer Dashboard. If a seller uses a Square App Marketplace application to process payments, the field contains the corresponding application ID.
    public var ApplicationId: String?
    
    enum CodingKeys: String, CodingKey {
        case SquareProduct = "square_product"
        case ApplicationId = "application_id"
    }
}
