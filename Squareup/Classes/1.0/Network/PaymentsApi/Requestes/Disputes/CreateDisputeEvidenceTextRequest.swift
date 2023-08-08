//
//  CreateDisputeEvidenceTextRequest.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

internal class CreateDisputeEvidenceTextRequest: Codable {
    
    // - IdempotencyKey: A unique key identifying the request. For more information, see Idempotency.
    /// Min Length 1
    /// Max Length 45
    var IdempotencyKey: String?
    /// - EvidenceType: The type of evidence you are uploading.
    var EvidenceType: DisputeEvidenceType?
    /// - EvidenceText: The evidence string.
    /// Min Length 1
    /// Max Length 500
    var EvidenceText: String?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case EvidenceType = "evidence_type"
        case EvidenceText = "evidence_text"
    }
}