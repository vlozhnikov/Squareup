//
//  RetrieveCustomerCustomAttributeDefinitionResponse.swift
//  Squareup
//
//  Created by user on 2.08.23.
//

import Foundation

open class RetrieveCustomerCustomAttributeDefinitionResponse: SquareupResponse {
    
    /// - customAttributeDefinition: The retrieved custom attribute definition.
    public var customAttributeDefinition: CustomAttributeDefinition?
    
    enum CodingKeys: String, CodingKey {
        case customAttributeDefinition = "custom_attribute_definition"
    }
}
