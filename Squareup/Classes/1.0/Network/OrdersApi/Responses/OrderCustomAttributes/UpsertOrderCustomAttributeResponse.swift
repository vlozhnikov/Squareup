//
//  UpsertOrderCustomAttributeResponse.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class UpsertOrderCustomAttributeResponse: SquareupResponse {
    
    /// - customAttributeDefinition: The order custom attribute that was created or modified.
    var customAttributeDefinition: CustomAttributeDefinition?
    
    enum CodingKeys: String, CodingKey {
        case customAttributeDefinition = "custom_attribute_definition"
    }
}
