//
//  RetrieveBookingCustomAttributeDefinitionRequest.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

internal class RetrieveBookingCustomAttributeDefinitionRequest: Codable {
    
    /// - Version: The current version of the custom attribute definition, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a BAD_REQUEST error.
    var Version: Int?
    
    enum CodingKeys: String, CodingKey {
        case Version = "version"
    }
}
