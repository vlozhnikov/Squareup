//
//  RetrieveLocationCustomAttributeResponse.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

open class RetrieveLocationCustomAttributeResponse: SquareupResponse {
    
    /// - customAttribute: The retrieved custom attribute. If with_definition was set to true in the request, the custom attribute definition is returned in the definition field.
    public var customAttribute: CustomAttribute?
    
    enum CodingKeys: String, CodingKey {
        case customAttribute = "custom_attribute"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.customAttribute = try container.decodeIfPresent(CustomAttribute.self, forKey: .customAttribute)
    }
}
