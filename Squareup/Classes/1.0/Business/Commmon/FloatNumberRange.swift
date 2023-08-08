//
//  FloatNumberRange.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

/// - FloatNumberRange: Specifies a decimal number range.
/// https://developer.squareup.com/reference/square/objects/FloatNumberRange
open class FloatNumberRange: Codable {
    
    /// - StartAt: A decimal value indicating where the range starts.
    public var StartAt: String?
    /// - EndAt: A decimal value indicating where the range ends.
    public var EndAt: String?
    
    enum CodingKeys: String, CodingKey {
        case StartAt = "start_at"
        case EndAt = "end_at"
    }
}
