//
//  RetrieveLocationCustomAttributeDefinitionResponse.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

open class RetrieveLocationCustomAttributeDefinitionResponse: SquareupResponse {
    
    /// - customAttributeDefinition: The retrieved custom attribute definition.
    public var customAttributeDefinition: CustomAttributeDefinition?
    
    enum CodingKeys: String, CodingKey {
        case customAttributeDefinition = "custom_attribute_definition"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.customAttributeDefinition = try container.decodeIfPresent(CustomAttributeDefinition.self, forKey: .customAttributeDefinition)
    }
}
