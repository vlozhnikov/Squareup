//
//  UpdateCustomerCustomAttributeDefinitionResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.08.23.
//

import Foundation

open class UpdateCustomerCustomAttributeDefinitionResponse: SquareupResponse {
    
    // - CustomAttributeDefinitions: The updated custom attribute definition.
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
