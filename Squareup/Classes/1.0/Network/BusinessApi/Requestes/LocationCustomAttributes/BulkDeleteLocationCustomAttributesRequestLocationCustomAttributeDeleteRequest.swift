//
//  BulkDeleteLocationCustomAttributesRequestLocationCustomAttributeDeleteRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 30.06.23.
//

import Foundation

open class BulkDeleteLocationCustomAttributesRequestLocationCustomAttributeDeleteRequest: Codable {
    
    /// - Key: Read only The key of the associated custom attribute definition. Represented as a qualified key if the requesting app is not the definition owner.
    public var Key: String?
    
    enum CodingKeys: String, CodingKey {
        case Key = "key"
    }
}
