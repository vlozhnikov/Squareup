//
//  UpdateWageSettingRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 6.06.23.
//

import Foundation

open class UpdateWageSettingRequest: Codable {
    
    /// - wageSetting: The new WageSetting object that completely replaces the existing one.
    public var wageSetting: WageSetting?
    
    enum CodingKeys: String, CodingKey {
        case wageSetting = "wage_setting"
    }
}
