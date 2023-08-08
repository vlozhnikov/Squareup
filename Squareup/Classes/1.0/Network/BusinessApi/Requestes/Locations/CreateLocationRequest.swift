//
//  CreateLocationRequest.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

internal class CreateLocationRequest: Codable {
    
    /// - location: The initial values of the location being created. The name field is required and must be unique within a seller account. All other fields are optional, but any information you care about for the location should be included. The remaining fields are automatically added based on the data from the main location.
    var location: Location?
    
    enum CodingKeys: String, CodingKey {
        case location = "location"
    }
}
