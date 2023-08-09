//
//  Range.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

/// - Range: The range of a number value between the specified lower and upper bounds.
/// https://developer.squareup.com/reference/square/objects/Range
open class Range: Codable {
    
    /// - Min: The lower bound of the number range. At least one of min or max must be specified. If unspecified, the results will have no minimum value.
    public var Min: String?
    /// - Max: The upper bound of the number range. At least one of min or max must be specified. If unspecified, the results will have no maximum value.
    public var Max: String?
    
    enum CodingKeys: String, CodingKey {
        case Min = "min"
        case Max = "max"
    }
}
