//
//  SquareResponse.swift
//  Business Calendar
//
//  Created by user on 4.04.23.
//

import Foundation

open class SquareupResponse: Codable {
    
    /// - Errors: Any errors that occurred during the request.
    var Errors: [SquareErrorResponse]?
    
    enum CodingKeys: String, CodingKey {
        case Errors = "errors"
    }
    
    var error: SquareErrorResponse? {
        return self.Errors?.first
    }
}
