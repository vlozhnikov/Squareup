//
//  BulkDeleteMerchantCustomAttributesResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 28.06.23.
//

import Foundation

open class BulkDeleteMerchantCustomAttributesResponse: SquareupResponse {
    
    /// - Values: A map of responses that correspond to individual delete requests. Each response has the same key as the corresponding request.
    public var Values: [String: BulkDeleteMerchantCustomAttributesResponseMerchantCustomAttributeDeleteResponse]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Values = try container.decodeIfPresent([String: BulkDeleteMerchantCustomAttributesResponseMerchantCustomAttributeDeleteResponse].self, forKey: .Values)
    }
}
