//
//  SquareResponse.swift
//  Business Calendar
//
//  Created by user on 4.04.23.
//

import Foundation

open class SquareupResponse: Codable {
    
    /// - Errors: Any errors that occurred during the request.
    public var Errors: [SquareErrorResponse]?
    
    enum CodingKeys: String, CodingKey {
        case Errors = "errors"
    }
    
    public var error: SquareErrorResponse? {
        return self.Errors?.first
    }
    
    required public init(from decoder: Decoder) throws {

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Errors = try container.decodeIfPresent([SquareErrorResponse].self, forKey: .Errors)
    }
}
