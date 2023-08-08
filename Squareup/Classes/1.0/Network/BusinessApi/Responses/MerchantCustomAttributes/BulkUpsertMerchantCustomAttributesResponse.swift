//
//  BulkUpsertMerchantCustomAttributesResponse.swift
//  Squareup
//
//  Created by user on 28.06.23.
//

import Foundation

open class BulkUpsertMerchantCustomAttributesResponse: SquareupResponse {
    
    /// - Values: A map of responses that correspond to individual upsert requests. Each response has the same ID as the corresponding request and contains either a merchant_id and custom_attribute or an errors field.
    var Values: [String: BulkUpsertMerchantCustomAttributesResponseMerchantCustomAttributeUpsertResponse]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
}
