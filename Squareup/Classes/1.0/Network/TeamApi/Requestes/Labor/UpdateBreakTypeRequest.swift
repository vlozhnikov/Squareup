//
//  UpdateBreakTypeRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.08.23.
//

import Foundation

open class UpdateBreakTypeRequest: Codable {
    
    /// - breakType: The updated BreakType.
    public var breakType: BreakType?
    
    enum CodingKeys: String, CodingKey {
        case breakType = "break_type"
    }
}
