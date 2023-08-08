//
//  CreateBookingCustomAttributeDefinitionResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class CreateBookingCustomAttributeDefinitionResponse: SquareupResponse {
    
    /// - CustomAttributeDefinition: The newly created custom attribute definition.
    var customAttributeDefinition: CustomAttributeDefinition?
    
    enum CodingKeys: String, CodingKey {
        case customAttributeDefinition = "custom_attribute_definition"
    }
}
