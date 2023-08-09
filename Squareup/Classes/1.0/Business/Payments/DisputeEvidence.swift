//
//  DisputeEvidence.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.07.23.
//

import Foundation

/// - DisputeEvidence:
/// https://developer.squareup.com/reference/square/objects/DisputeEvidence
open class DisputeEvidence: Codable {
    
    /// - EvidenceId: Deprecated
    /// The Square-generated ID of the evidence.
    /// Min Length 1
    /// Max Length 40
    public var EvidenceId: String?
    /// - Id: The Square-generated ID of the evidence.
    /// Min Length 1
    /// Max Length 40
    public var Id: String?
    /// - DisputeId: The ID of the dispute the evidence is associated with.
    /// Min Length 1
    /// Max Length 40
    public var DisputeId: String?
    /// - EvidenceFile: Image, PDF, TXT
    public var EvidenceFile: DisputeEvidenceFile?
    /// - EvidenceText: Raw text
    /// Min Length 1
    /// Max Length 500
    public var EvidenceText: String?
    /// - UploadedAt: The time when the evidence was uploaded, in RFC 3339 format.
    /// Min Length 1
    /// Max Length 40
    @FormattedDate<RFC3339_Strategy> public var UploadedAt: Date?
    /// - EvidenceType: The type of the evidence.
    public var EvidenceType: DisputeEvidenceType?
    
    enum CodingKeys: String, CodingKey {
        case EvidenceId = "evidence_id"
        case Id = "id"
        case DisputeId = "dispute_id"
        case EvidenceFile = "evidence_file"
        case EvidenceText = "evidence_text"
        case UploadedAt = "uploaded_at"
        case EvidenceType = "evidence_type"
    }
}
