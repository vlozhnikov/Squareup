//
//  RetrieveMerchantCustomAttributeDefinitionRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 28.06.23.
//

import Foundation

open class RetrieveMerchantCustomAttributeDefinitionRequest: Codable {
    
    /// - Version: The current version of the custom attribute definition, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a BAD_REQUEST error.
    public var Version: Int?
    
    enum CodingKeys: String, CodingKey {
        case Version = "version"
    }
}
