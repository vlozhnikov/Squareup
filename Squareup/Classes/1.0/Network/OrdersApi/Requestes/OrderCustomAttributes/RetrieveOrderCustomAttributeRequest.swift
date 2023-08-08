//
//  RetrieveOrderCustomAttributeRequest.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class RetrieveOrderCustomAttributeRequest: Codable {
    
    /// - Version: To enable optimistic concurrency control, include this optional field and specify the current version of the custom attribute.
    public var Version: Int?
    /// - WithDefinitions: Indicates whether to return the custom attribute definition in the definition field of each custom attribute. Set this parameter to true to get the name and description of each custom attribute, information about the data type, or other definition details. The default value is false.
    public var WithDefinitions: Bool?
    
    enum CodingKeys: String, CodingKey {
        case Version = "version"
        case WithDefinitions = "with_definitions"
    }
}
