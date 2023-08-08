//
//  BulkUpsertCustomerCustomAttributesRequest.swift
//  Squareup
//
//  Created by user on 2.08.23.
//

import Foundation

internal class BulkUpsertCustomerCustomAttributesRequest: Codable {
    
    /// - Value: A map containing 1 to 25 individual upsert requests. For each request, provide an arbitrary ID that is unique for this BulkUpsertCustomerCustomAttributes request and the information needed to create or update a custom attribute.
    var Value: [String: BulkUpsertCustomerCustomAttributesRequestCustomerCustomAttributeUpsertRequest]?
    
    enum CodingKeys: String, CodingKey {
        case Value = "value"
    }
}
