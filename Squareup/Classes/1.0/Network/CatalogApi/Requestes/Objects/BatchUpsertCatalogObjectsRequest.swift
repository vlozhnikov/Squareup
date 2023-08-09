//
//  BatchUpsertCatalogObjectsRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

open class BatchUpsertCatalogObjectsRequest: Codable {
    
    public var IdempotencyKey: String?
    public var Batches: [CatalogObjectBatch]?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case Batches = "batches"
    }
}
