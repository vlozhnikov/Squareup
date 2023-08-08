//
//  RetrieveOrderCustomAttributeDefinitionResponse.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class RetrieveOrderCustomAttributeDefinitionResponse: SquareupResponse {
    
    /// - customAttributeDefinition: The retrieved custom attribute definition.
    public var customAttributeDefinition: CustomAttributeDefinition?
    
    enum CodingKeys: String, CodingKey {
        case customAttributeDefinition = "custom_attribute_definition"
    }
}
