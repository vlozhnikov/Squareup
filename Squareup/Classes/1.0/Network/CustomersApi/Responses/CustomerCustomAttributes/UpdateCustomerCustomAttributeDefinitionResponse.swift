//
//  UpdateCustomerCustomAttributeDefinitionResponse.swift
//  Squareup
//
//  Created by user on 2.08.23.
//

import Foundation

open class UpdateCustomerCustomAttributeDefinitionResponse: SquareupResponse {
    
    // - CustomAttributeDefinitions: The updated custom attribute definition.
    var customAttributeDefinition: CustomAttributeDefinition?
    
    enum CodingKeys: String, CodingKey {
        case customAttributeDefinition = "custom_attribute_definition"
    }
}
