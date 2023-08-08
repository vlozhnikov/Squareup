//
//  BulkDeleteLocationCustomAttributesRequest.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

open class BulkDeleteLocationCustomAttributesRequest: Codable {
    
    /// - Values: The data used to update the CustomAttribute objects. The keys must be unique and are used to map to the corresponding response.
    public var Values: [String: BulkDeleteLocationCustomAttributesRequestLocationCustomAttributeDeleteRequest]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
}
