//
//  BulkDeleteMerchantCustomAttributesRequestMerchantCustomAttributeDeleteRequest.swift
//  Squareup
//
//  Created by user on 28.06.23.
//

import Foundation

open class BulkDeleteMerchantCustomAttributesRequestMerchantCustomAttributeDeleteRequest: Codable {
    
    /// - Key: Read only The key of the associated custom attribute definition. Represented as a qualified key if the requesting app is not the definition owner.
    public var Key: String?
    
    enum CodingKeys: String, CodingKey {
        case Key = "key"
    }
}
