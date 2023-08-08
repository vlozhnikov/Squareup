//
//  RetrieveMerchantCustomAttributeResponse.swift
//  Squareup
//
//  Created by user on 28.06.23.
//

import Foundation

open class RetrieveMerchantCustomAttributeResponse: SquareupResponse {
    
    /// - customAttribute: The retrieved custom attribute. If with_definition was set to true in the request, the custom attribute definition is returned in the definition field.
    var customAttribute: CustomAttribute?
    
    enum CodingKeys: String, CodingKey {
        case customAttribute = "custom_attribute"
    }
}
