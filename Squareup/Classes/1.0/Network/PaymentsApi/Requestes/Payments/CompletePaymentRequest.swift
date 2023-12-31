//
//  CompletePaymentRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 15.06.23.
//

import Foundation

open class CompletePaymentRequest: Codable {
    
    /// - VersionToken: Used for optimistic concurrency. This opaque token identifies the current Payment version that the caller expects. If the server has a different version of the Payment, the update fails and a response with a VERSION_MISMATCH error is returned.
    public var VersionToken: String?
    
    enum CodingKeys: String, CodingKey {
        case VersionToken = "version_token"
    }
}
