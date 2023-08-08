//
//  RetrieveLocationCustomAttributeRequest.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

internal class RetrieveLocationCustomAttributeRequest: Codable {
    
    /// - WithDefinition: Indicates whether to return the custom attribute definition in the definition field of the custom attribute. Set this parameter to true to get the name and description of the custom attribute, information about the data type, or other definition details. The default value is false.
    var WithDefinition: Bool?
    /// - Version: The current version of the custom attribute, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a BAD_REQUEST error.
    var Version: Int?
    
    enum CodingKeys: String, CodingKey {
        case WithDefinition = "with_definition"
        case Version = "version"
    }
}
