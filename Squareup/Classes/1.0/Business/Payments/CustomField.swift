//
//  CustomField.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

/// - CustomField: Describes a custom form field to add to the checkout page to collect more information from buyers during checkout.
/// For more information, see Specify checkout options.
/// https://developer.squareup.com/reference/square/objects/CustomField
open class CustomField: Codable {
    
    /// - Title: The title of the custom field.
    /// Min Length 1
    /// Max Length 50
    public var Title: String?
    
    enum CodingKeys: String, CodingKey {
        case Title = "title"
    }
}
