//
//  DisputeEvidence.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

/// - DisputeEvidence:
/// https://developer.squareup.com/reference/square/objects/DisputeEvidence
open class DisputeEvidence: Codable {
    
    /// - EvidenceId: Deprecated
    /// The Square-generated ID of the evidence.
    /// Min Length 1
    /// Max Length 40
    var EvidenceId: String?
    /// - Id: The Square-generated ID of the evidence.
    /// Min Length 1
    /// Max Length 40
    var Id: String?
    /// - DisputeId: The ID of the dispute the evidence is associated with.
    /// Min Length 1
    /// Max Length 40
    var DisputeId: String?
    /// - EvidenceFile: Image, PDF, TXT
    var EvidenceFile: DisputeEvidenceFile?
    /// - EvidenceText: Raw text
    /// Min Length 1
    /// Max Length 500
    var EvidenceText: String?
    /// - UploadedAt: The time when the evidence was uploaded, in RFC 3339 format.
    /// Min Length 1
    /// Max Length 40
//    var UploadedAt: Date?
    @FormattedDate<RFC3339_Strategy> var UploadedAt: Date?
    /// - EvidenceType: The type of the evidence.
    var EvidenceType: DisputeEvidenceType?
    
    enum CodingKeys: String, CodingKey {
        case EvidenceId = "evidence_id"
        case Id = "id"
        case DisputeId = "dispute_id"
        case EvidenceFile = "evidence_file"
        case EvidenceText = "evidence_text"
        case UploadedAt = "uploaded_at"
        case EvidenceType = "evidence_type"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.EvidenceId = try container.decodeIfPresent(String.self, forKey: .EvidenceId)
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.DisputeId = try container.decodeIfPresent(String.self, forKey: .DisputeId)
//        self.EvidenceFile = try container.decodeIfPresent(DisputeEvidenceFile.self, forKey: .EvidenceFile)
//        self.EvidenceText = try container.decodeIfPresent(String.self, forKey: .EvidenceText)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UploadedAt), !dateString.isEmpty {
//            self.UploadedAt = try dateString.decode_RFC3339_Date(container, forKey: .UploadedAt)
//        }
//        self.EvidenceType = try container.decodeIfPresent(DisputeEvidenceType.self, forKey: .EvidenceType)
//    }
}
