//
//  CreateDisputeEvidenceFileRequest.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class CreateDisputeEvidenceFileRequest: Codable {
    
    /// - IdempotencyKey: A unique key identifying the request. For more information, see Idempotency.
    /// Min Length 1
    /// Max Length 45
    public var IdempotencyKey: String?
    /// - EvidenceType: The type of evidence you are uploading.
    public var EvidenceType: DisputeEvidenceType?
    /// - ContentType: The MIME type of the uploaded file. The type can be image/heic, image/heif, image/jpeg, application/pdf, image/png, or image/tiff.
    /// Min Length 1
    /// Max Length 40
    public var ContentType: String?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case EvidenceType = "evidence_type"
        case ContentType = "content_type"
    }
}
