//
//  RetrieveOrderCustomAttributeDefinitionRequest.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class RetrieveOrderCustomAttributeDefinitionRequest: Codable {
    
    /// - Version: To enable optimistic concurrency control, include this optional field and specify the current version of the custom attribute.
    public var Version: Int?
    
    enum CodingKeys: String, CodingKey {
        case Version = "version"
    }
}
