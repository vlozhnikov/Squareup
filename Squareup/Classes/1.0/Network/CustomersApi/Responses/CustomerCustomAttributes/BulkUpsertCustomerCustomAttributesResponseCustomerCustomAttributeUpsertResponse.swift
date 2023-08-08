//
//  BulkUpsertCustomerCustomAttributesResponseCustomerCustomAttributeUpsertResponse.swift
//  Squareup
//
//  Created by user on 2.08.23.
//

import Foundation

/// - BulkUpsertCustomerCustomAttributesResponseCustomerCustomAttributeUpsertResponse: Represents a response for an individual upsert request in a BulkUpsertCustomerCustomAttributes operation.
open class BulkUpsertCustomerCustomAttributesResponseCustomerCustomAttributeUpsertResponse: SquareupResponse {
    
    /// - CustomerId: The ID of the customer profile associated with the custom attribute.
    var CustomerId: String?
    /// - customAttribute: TThe new or updated custom attribute.
    var customAttribute: CustomAttribute?
    
    enum CodingKeys: String, CodingKey {
        case CustomerId = "customer_id"
        case customAttribute = "custom_attribute"
    }
}
