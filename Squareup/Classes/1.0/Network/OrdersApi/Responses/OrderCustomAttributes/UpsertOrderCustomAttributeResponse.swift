//
//  UpsertOrderCustomAttributeResponse.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class UpsertOrderCustomAttributeResponse: SquareupResponse {
    
    /// - customAttributeDefinition: The order custom attribute that was created or modified.
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
