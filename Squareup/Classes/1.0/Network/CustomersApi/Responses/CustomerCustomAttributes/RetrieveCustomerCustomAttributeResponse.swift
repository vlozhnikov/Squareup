//
//  RetrieveCustomerCustomAttributeResponse.swift
//  Squareup
//
//  Created by user on 2.08.23.
//

import Foundation

open class RetrieveCustomerCustomAttributeResponse: SquareupResponse {
    
    /// - customAttribute: The retrieved custom attribute. If with_definition was set to true in the request, the custom attribute definition is returned in the definition field.
    public var customAttribute: CustomAttribute?
    
    enum CodingKeys: String, CodingKey {
        case customAttribute = "custom_attribute"
    }
}
