//
//  SourceApplication.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 1.05.23.
//

import Foundation

/// - SourceApplication: Represents information about the application used to generate a change.
/// https://developer.squareup.com/reference/square/objects/SourceApplication
open class SourceApplication: Codable {
    
    /// - Product: Read only The product type of the application.
    public var Product: Product?
    /// - ApplicationId: Read only The Square-assigned ID of the application. This field is used only if the product type is EXTERNAL_API.
    public var ApplicationId: String?
    /// - Name: Read only The display name of the application (for example, "Custom Application" or "Square POS 4.74 for Android").
    public var Name: String?
    
    enum CodingKeys: String, CodingKey {
        case Product = "product"
        case ApplicationId = "application_id"
        case Name = "name"
    }
}
