//
//  SquareErrorResponse.swift
//  
//
//  Created by user on 5.06.23.
//

import Foundation

/// - SquareErrorResponse: Represents an error encountered during a request to the Connect API.
/// https://developer.squareup.com/reference/square/objects/Error
open class SquareErrorResponse: Codable {
    
    /// - Category: The high-level category for the error.
    public var Category: String?
    /// - Code: The specific code of the error.
    public var Code: ErrorCode?
    /// - Detail: A human-readable description of the error for debugging purposes.
    public var Detail: String?
    /// - Field: The name of the field provided in the original request (if any) that the error pertains to.
    public var Field: String?
    
    enum CodingKeys: String, CodingKey {
        case Category = "category"
        case Code = "code"
        case Detail = "detail"
        case Field = "field"
    }
    
    public var error: Error {
        return StringError("\(self.Detail ?? "-"): \(self.Field ?? "-")")
    }
}
