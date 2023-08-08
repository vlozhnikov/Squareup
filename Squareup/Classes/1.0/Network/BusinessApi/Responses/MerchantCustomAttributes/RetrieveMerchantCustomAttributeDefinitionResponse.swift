//
//  RetrieveMerchantCustomAttributeDefinitionResponse.swift
//  Squareup
//
//  Created by user on 28.06.23.
//

import Foundation

open class RetrieveMerchantCustomAttributeDefinitionResponse: SquareupResponse {
    
    /// - customAttributeDefinition: The retrieved custom attribute definition.
    var customAttributeDefinition: CustomAttributeDefinition?
    
    enum CodingKeys: String, CodingKey {
        case customAttributeDefinition = "custom_attribute_definition"
    }
}
