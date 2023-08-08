//
//  CashDrawerDevice.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

/// - CashDrawerDevice:
/// https://developer.squareup.com/reference/square/objects/CashDrawerDevice
open class CashDrawerDevice: Codable {
    
    /// - Id: The device Square-issued ID
    var Id: String?
    /// - Name: The device merchant-specified name.
    var Name: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case Name = "name"
    }
}
