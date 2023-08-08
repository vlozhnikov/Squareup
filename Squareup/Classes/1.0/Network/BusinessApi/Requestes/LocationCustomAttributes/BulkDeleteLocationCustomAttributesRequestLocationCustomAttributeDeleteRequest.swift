//
//  BulkDeleteLocationCustomAttributesRequestLocationCustomAttributeDeleteRequest.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

internal class BulkDeleteLocationCustomAttributesRequestLocationCustomAttributeDeleteRequest: Codable {
    
    /// - Key: Read only The key of the associated custom attribute definition. Represented as a qualified key if the requesting app is not the definition owner.
    var Key: String?
    
    enum CodingKeys: String, CodingKey {
        case Key = "key"
    }
}
