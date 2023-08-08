//
//  CreateOrderCustomAttributeDefinitionResponse.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class CreateOrderCustomAttributeDefinitionResponse: SquareupResponse {
    
    /// - customAttributeDefinition: The new custom attribute definition.
    var customAttributeDefinition: CustomAttributeDefinition?
    
    enum CodingKeys: String, CodingKey {
        case customAttributeDefinition = "custom_attribute_definition"
    }
}
