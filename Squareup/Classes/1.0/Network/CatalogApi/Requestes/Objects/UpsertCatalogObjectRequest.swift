//
//  UpsertCatalogObjectRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

open class UpsertCatalogObjectRequest: Codable {
    
    public var IdempotencyKey: String?
    public var Object: CatalogObject?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case Object = "object"
    }
}
