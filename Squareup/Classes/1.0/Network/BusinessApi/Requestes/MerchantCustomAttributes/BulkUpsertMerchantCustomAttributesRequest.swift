//
//  BulkUpsertMerchantCustomAttributesRequest.swift
//  Squareup
//
//  Created by user on 28.06.23.
//

import Foundation

internal class BulkUpsertMerchantCustomAttributesRequest: Codable {
    
    /// - Values: A map containing 1 to 25 individual upsert requests. For each request, provide an arbitrary ID that is unique for this BulkUpsertMerchantCustomAttributes request and the information needed to create or update a custom attribute.
    var Values: [String: BulkUpsertMerchantCustomAttributesRequestMerchantCustomAttributeUpsertRequest]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
}
