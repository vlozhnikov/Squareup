//
//  BulkDeleteMerchantCustomAttributesResponse.swift
//  Squareup
//
//  Created by user on 28.06.23.
//

import Foundation

open class BulkDeleteMerchantCustomAttributesResponse: SquareupResponse {
    
    /// - Values: A map of responses that correspond to individual delete requests. Each response has the same key as the corresponding request.
    var Values: [String: BulkDeleteMerchantCustomAttributesResponseMerchantCustomAttributeDeleteResponse]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
}
