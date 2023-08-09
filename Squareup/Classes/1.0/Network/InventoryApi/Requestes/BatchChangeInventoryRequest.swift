//
//  BatchChangeInventoryRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 7.06.23.
//

import Foundation

open class BatchChangeInventoryRequest: Codable {
    
    /// - IdempotencyKey: A client-supplied, universally unique identifier (UUID) for the request.
    /// See Idempotency in the API Development 101 section for more information.
    /// Min Length 1
    /// Max Length 128
    public var IdempotencyKey: String?
    /// - Counts: Changes created for the request.
    public var Changes: [InventoryChange]?
    /// - IgnoreUnchangedCounts: Indicates whether the current physical count should be ignored if the quantity is unchanged since the last physical count. Default: true.
    public var IgnoreUnchangedCounts = true
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case Changes = "changes"
        case IgnoreUnchangedCounts = "ignore_unchanged_counts"
    }
}
