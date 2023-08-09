//
//  CashDrawerDevice.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 30.06.23.
//

import Foundation

/// - CashDrawerDevice:
/// https://developer.squareup.com/reference/square/objects/CashDrawerDevice
open class CashDrawerDevice: Codable {
    
    /// - Id: The device Square-issued ID
    public var Id: String?
    /// - Name: The device merchant-specified name.
    public var Name: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case Name = "name"
    }
}
