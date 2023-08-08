//
//  DisputeEvidenceFile.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

/// - DisputeEvidenceFile: A file to be uploaded as dispute evidence.
/// https://developer.squareup.com/reference/square/objects/DisputeEvidenceFile
open class DisputeEvidenceFile: Codable {
    
    /// - Filename: The file name including the file extension. For example: "receipt.tiff".
    /// Min Length 1
    /// Max Length 40
    public var Filename: String?
    /// - Filetype: Dispute evidence files must be application/pdf, image/heic, image/heif, image/jpeg, image/png, or image/tiff formats.
    /// Min Length  1
    /// Max Length 40
    public var Filetype: String?
    
    enum CodingKeys: String, CodingKey {
        case Filename = "filename"
        case Filetype = "filetype"
    }
}
