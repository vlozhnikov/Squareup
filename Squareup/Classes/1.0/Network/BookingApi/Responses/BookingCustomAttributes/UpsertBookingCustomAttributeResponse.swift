//
//  UpsertBookingCustomAttributeResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

open class UpsertBookingCustomAttributeResponse: SquareupResponse {
    
    /// - customAttribute: The new or updated custom attribute.
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
