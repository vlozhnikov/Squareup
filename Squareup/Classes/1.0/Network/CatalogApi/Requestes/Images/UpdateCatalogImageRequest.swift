//
//  UpdateCatalogImageRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 5.05.23.
//

import Foundation

open class UpdateCatalogImageRequest: Codable {
    
    /// - IdempotencyKey: A unique string that identifies this UpdateCatalogImage request. Keys can be any valid string but must be unique for every UpdateCatalogImage request.
    /// See Idempotency keys for more information.
    /// Min Length 1
    public var IdempotencyKey: String?
    /// - Image:
    public var Image: CatalogObject?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case Image = "image"
    }
}
