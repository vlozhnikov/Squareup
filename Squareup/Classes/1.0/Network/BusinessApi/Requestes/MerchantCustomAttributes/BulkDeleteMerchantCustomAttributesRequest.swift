//
//  BulkDeleteMerchantCustomAttributesRequest.swift
//  Squareup
//
//  Created by user on 28.06.23.
//

import Foundation

open class BulkDeleteMerchantCustomAttributesRequest: Codable {
    
    /// - Values: The data used to update the CustomAttribute objects. The keys must be unique and are used to map to the corresponding response.
    public var Values: [String: BulkDeleteMerchantCustomAttributesRequestMerchantCustomAttributeDeleteRequest]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
}
