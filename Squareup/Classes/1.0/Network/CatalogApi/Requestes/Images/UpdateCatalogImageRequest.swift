//
//  UpdateCatalogImageRequest.swift
//  Business Calendar
//
//  Created by user on 5.05.23.
//

import Foundation

internal class UpdateCatalogImageRequest: Codable {
    
    var IdempotencyKey: String?
    var ImageId: String?
    var Image: CatalogObject?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case ImageId = "image_id"
        case Image = "image"
    }
}
