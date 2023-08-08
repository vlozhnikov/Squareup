//
//  BulkUpsertCustomerCustomAttributesResponse.swift
//  Squareup
//
//  Created by user on 2.08.23.
//

import Foundation

open class BulkUpsertCustomerCustomAttributesResponse: SquareupResponse {
    
    /// - Values: A map of responses that correspond to individual upsert requests. Each response has the same ID as the corresponding request and contains either a customer_id and custom_attribute or an errors field.
    public var Values: [String: BulkUpsertCustomerCustomAttributesResponseCustomerCustomAttributeUpsertResponse]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
}
