//
//  UpdateCatalogImageRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 5.05.23.
//

import Foundation

open class UpdateCatalogImageRequest: Codable {
    
    public var IdempotencyKey: String?
    public var ImageId: String?
    public var Image: CatalogObject?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case ImageId = "image_id"
        case Image = "image"
    }
}
