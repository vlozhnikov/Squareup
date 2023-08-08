//
//  CreateMerchantCustomAttributeDefinitionResponse.swift
//  Squareup
//
//  Created by user on 28.06.23.
//

import Foundation

open class CreateMerchantCustomAttributeDefinitionResponse: SquareupResponse {
    
    /// - customAttributeDefinition: The new custom attribute definition.
    public var customAttributeDefinition: CustomAttributeDefinition?
    
    enum CodingKeys: String, CodingKey {
        case customAttributeDefinition = "custom_attribute_definition"
    }
}
