//
//  UpsertCatalogObjectRequest.swift
//  Business Calendar
//
//  Created by user on 3.05.23.
//

import Foundation

internal class UpsertCatalogObjectRequest: Codable {
    
    var IdempotencyKey: String?
    var Object: CatalogObject?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case Object = "object"
    }
}
