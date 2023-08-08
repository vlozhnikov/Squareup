//
//  BulkDeleteOrderCustomAttributesRequestDeleteCustomAttribute.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

internal class BulkDeleteOrderCustomAttributesRequestDeleteCustomAttribute: Codable {
    
    /// - Key: Read only The key of the custom attribute to delete. This key must match the key of an existing custom attribute definition.
    /// Min Length 1
    var Key: String?
    /// - OrderId: The ID of the target order.
    /// Min Length  1
    /// Max Length 255
    var OrderId: String?
    
    enum CodingKeys: String, CodingKey {
        case Key = "key"
        case OrderId = "order_id"
    }
}
