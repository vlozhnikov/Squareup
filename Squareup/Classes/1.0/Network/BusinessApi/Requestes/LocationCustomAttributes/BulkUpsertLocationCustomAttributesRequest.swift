//
//  BulkUpsertLocationCustomAttributesRequest.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

open class BulkUpsertLocationCustomAttributesRequest: Codable {
    
    /// - Values: A map containing 1 to 25 individual upsert requests. For each request, provide an arbitrary ID that is unique for this BulkUpsertLocationCustomAttributes request and the information needed to create or update a custom attribute.
    public var Values: [String: BulkUpsertLocationCustomAttributesRequestLocationCustomAttributeUpsertRequest]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
}
