//
//  RetrieveCustomerCustomAttributeRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.08.23.
//

import Foundation

open class RetrieveCustomerCustomAttributeRequest: Codable {
    
    /// - WithDefinitions: Indicates whether to return the custom attribute definition in the definition field of each custom attribute. Set this parameter to true to get the name and description of each custom attribute, information about the data type, or other definition details. The default value is false.
    public var WithDefinitions: Bool?
    /// - Version: The current version of the custom attribute, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a BAD_REQUEST error.
    public var Version: Int?
    
    enum CodingKeys: String, CodingKey {
        case WithDefinitions = "with_definitions"
        case Version = "version"
    }
}
