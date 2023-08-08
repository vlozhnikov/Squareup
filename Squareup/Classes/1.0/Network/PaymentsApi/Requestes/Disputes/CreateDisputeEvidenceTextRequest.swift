//
//  CreateDisputeEvidenceTextRequest.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class CreateDisputeEvidenceTextRequest: Codable {
    
    // - IdempotencyKey: A unique key identifying the request. For more information, see Idempotency.
    /// Min Length 1
    /// Max Length 45
    public var IdempotencyKey: String?
    /// - EvidenceType: The type of evidence you are uploading.
    public var EvidenceType: DisputeEvidenceType?
    /// - EvidenceText: The evidence string.
    /// Min Length 1
    /// Max Length 500
    public var EvidenceText: String?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case EvidenceType = "evidence_type"
        case EvidenceText = "evidence_text"
    }
}
