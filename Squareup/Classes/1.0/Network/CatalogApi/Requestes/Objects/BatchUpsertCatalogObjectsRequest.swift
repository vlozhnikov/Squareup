//
//  BatchUpsertCatalogObjectsRequest.swift
//  Business Calendar
//
//  Created by user on 3.05.23.
//

import Foundation

internal class BatchUpsertCatalogObjectsRequest: Codable {
    
    var IdempotencyKey: String?
    var Batches: [CatalogObjectBatch]?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case Batches = "batches"
    }
}
